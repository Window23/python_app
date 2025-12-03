# Dockerfile - simple Python Flask app
FROM python:3.11-slim

WORKDIR /app

# INstall dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

# Port used by Cloud Run/GKE style containers
ENV PORT=8080

# Command to run the app
CMD ["python", "app.py"]

