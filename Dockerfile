# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Set Python env vars
ENV PYTHONPATH=$(PWD):$PYTHONPATH
ENV PYTHONUNBUFFERED=TRUE

# Copy the current directory contents into the container at /app
COPY ./src /app/
COPY ./app.py /app/
COPY ./requirements.txt /app/

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Keep container opened
CMD tail -f /dev/null
