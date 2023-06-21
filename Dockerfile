# Deriving the python image
FROM python:3.8

# Create a working directory in Docker, makes life easier when running instructions
WORKDIR /app

# Copies all the source code into our directory to the Docker image
COPY . /app

# installs all the libraries we will need to execute the code
RUN pip install -r requirements.txt

# tell Docker the command to run inside the container
<<<<<<< HEAD
CMD ["python", "./main.py"]
=======
CMD ["python", "./main.py"]
>>>>>>> d29d6ab1d8c2959053d4ecafa5b43208abb0a470
