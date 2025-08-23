# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy all files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Streamlit default port
EXPOSE 8504

# Add this line before CMD
ENV PYTHONPATH=/app

# Run Streamlit
CMD ["streamlit", "run", "app/dashboard.py", "--server.port=8504", "--server.address=0.0.0.0"]
