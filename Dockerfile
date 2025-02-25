# Use lightweight Python image
FROM python:3.8-alpine

# Set working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Run the Flask app
ENTRYPOINT ["python"]
CMD ["app.py"]
