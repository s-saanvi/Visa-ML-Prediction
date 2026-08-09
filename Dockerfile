FROM python:3.12-slim

WORKDIR /app

# Copy requirements separately for Docker layer caching
COPY requirements.txt .

# Upgrade pip
RUN python -m pip install --upgrade pip

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source
COPY . .

# Start application
CMD ["python", "app.py"]