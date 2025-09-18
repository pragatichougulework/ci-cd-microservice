# Use lightweight Python image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all code into container
COPY . .

# Expose port 5000 (Flask runs here)
EXPOSE 5500

# Run the Flask app
CMD ["python", "app.py"]
