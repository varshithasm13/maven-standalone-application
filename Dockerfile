# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the necessary files to the container
COPY app.py /app/
COPY index.html /app/templates/

# Install the required Python packages
RUN pip install flask

# Expose the port the Flask app runs on
EXPOSE 8000

# Define the command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
