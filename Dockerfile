FROM python:3.11

# Set the working directory
WORKDIR /AutoGroq

# Copy the requirements file
COPY requirements.txt .

# Install the requirements
RUN pip install -r requirements.txt --no-cache-dir --disable-pip-version-check

# Copy the rest of the files
COPY AutoGroq/ .

# Run the application
CMD ["streamlit", "run", "main.py"]
