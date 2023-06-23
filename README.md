# ETL-pipeline Project

### Introduction

- This project is an ETL (Extract, Transform, Load) pipeline that extracts transactional data of 400k from Redshift.
- Then performs data exploration and cleaning, 
- Next load the transformed data into an AWS S3 bucket. 
- The pipeline is designed to automate these tasks and provide a streamlined data processing workflow.
- Also pipeline is designed to run within a Docker container for easy deployment and portability.

### Project Overview

The ETL pipeline performs the following steps:

- Extraction:
Connects to Redshift database.
Extracts the required data from Redshift, in this case, online transactional data.

- Data Exploration and Cleaning (Transformation):
Performs data exploration and analysis to understand the structure and quality of the extracted data.
Identifies and handles any missing or inconsistent data.
Removes duplicates from the dataset.

- Loading:
Establishes a connection with the AWS S3 service.
Writes the cleaned and transformed data as CSV file into the specified S3 bucket for further analysis or storage.

- Store in Docker: Uses Docker to containerize the ETL pipeline, 
  to ensure the ease of deployment across different environments. 
  


### Requirements
- Python 3.x
- psycopg2 package for connecting to Redshift
- boto3 package for connecting to AWS S3
- Docker

### Execution Instructions
To execute the ETL pipeline, please follow the steps below:

1. Prerequisites: Ensure that have the necessary credentials and access to the Redshift database.

2. Environment Setup: Copy the .env.example file and rename it to .env. Open the .env file and fill in the required environment variables.

3. Installation: Install the required Python packages by running pip install -r requirements.txt in your project's virtual environment.

4. Docker Build: Open a terminal or command prompt and navigate to the project's root directory.
   Execute the following command to build the Docker image:
  - docker image build -t etl-pipeline:0.1 .

5. Docker Run: After the Docker image is built, 
   run the following command to execute the ETL pipeline within a Docker container.
  - docker run --env-file .env etl-pipeline:0.1


### Project Structure
The project is organized as follows:
- extract.py: Contains the functions to connect to Redshift and extract the transactional data.
- transform.py: Includes the functions for data exploration, cleaning, and removing duplicates.
- load_data_to_s3.py: Contains the function to connect to AWS S3 and load the transformed data.
- main.py: Orchestrates the execution of the ETL pipeline by calling the necessary functions in the correct order.
- Dockerfile: Specifies the Docker image configuration for the ETL pipeline.
- .env.example: An example file with required environment variables. 
- Copy and fill it with your actual values to create the .env file.



