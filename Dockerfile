FROM python:3.10

# Update the package list and upgrade installed packages
RUN apt-get update && apt-get upgrade -y

# Install git
RUN apt-get install -y git

# Copy the requirements file
COPY requirements.txt /requirements.txt

# Install dependencies
RUN pip install --upgrade pip && pip install --no-cache-dir -r /requirements.txt

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . .

# Command to run your application
CMD ["python", "bot.py"]
