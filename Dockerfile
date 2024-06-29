FROM ubuntu:18.04

# Install Python 3 and pip (remove --no-index)
RUN apt-get update && apt-get install -y python3 python3-pip python3.12-venv

# Set working directory
WORKDIR /app

# Copy all files from the current directory
COPY . /app

# Install dependencies from requirements.txt (using pip3)
#RUN pip install -r /app/requirements.txt

# Set executable permission for the script
RUN chmod +x /app/my_script.sh

# Default command (optional)
CMD ["sh", "-c", "/app/my_script.sh"]
