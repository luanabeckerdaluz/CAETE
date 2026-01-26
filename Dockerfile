# Use Python 3.13 slim image as base
FROM python:3.13-slim

# Install system dependencies required for Fortran compilation, OpenMP, and Meson
RUN apt-get update && apt-get install -y \
    gfortran \
    gcc \
    make \
    libgomp1 \
    meson \
    ninja-build \
    && rm -rf /var/lib/apt/lists/*

# Copy the necessary files and folders into the container
COPY src/fortran /app/fortran
COPY src/py /app/py
COPY src/Makefile src/requirements.txt /app/

# Set WORKDIR and PYTHONPATH
WORKDIR /app
ENV PYTHONPATH=/app

# Install requirements
RUN make setup

# Copy entrypoint script and set it as CMD
COPY src/build_and_run.sh /app/build_and_run.sh
RUN chmod +x /app/build_and_run.sh
CMD ["./build_and_run.sh"]