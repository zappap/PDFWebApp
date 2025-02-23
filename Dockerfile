# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install required Python libraries
RUN pip install -r requirements.txt

# Expose port 7860 for Hugging Face Spaces
EXPOSE 7860

# Run the Flask app
CMD ["gunicorn", "-b", "0.0.0.0:7860", "app:app"]
