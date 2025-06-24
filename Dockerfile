FROM python:3.8

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Upgrade pip and install dependencies from requirements.txt
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose the port the app runs on
EXPOSE 8080

# Set the default command
CMD ["python", "app.py"]
