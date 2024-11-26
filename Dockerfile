# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the entire app directory into the container
COPY . .

# Expose the port that Flask will run on (default is 5000)
EXPOSE 5000

# Define the command to run your Flask app
CMD ["python", "app.py"]
