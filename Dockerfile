# Use an official lightweight Python image
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Expose the port FastAPI runs on
EXPOSE 8000

# Run the FastAPI application using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
