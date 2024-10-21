FROM python:3.9.7-slim-buster

# Set the working directory to /sample-flask-app
WORKDIR /sample-flask-app

# Copy the current directory contents into the container at /sample-flask-app
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development

# Expose port 5000
EXPOSE 5000

# Run the Flask application using gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
