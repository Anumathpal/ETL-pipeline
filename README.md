# ETL-pipeline

### Introduction
Building an ETL pipeline that carries out the following tasks:
- Extracts transactional data of 400k invoices from Redshift
- Transforms the data by identifying and removing duplicates
- Loads the transformed data to an s3 bucket

### Requirements
 The minimum requirements:
- Docker for Mac:
- Docker for Windows: 
- Installation:
- - Manual installation steps for older WSL version:

### Instructions on how to execute the code
Copy the ``.env.example`` file to `.env` and fill out the environment vars.

Make sure you are executing the code from the etl_pipeline folder and you have Docker Desktop running.

To run it locally first build the image.

```bash
  docker image build -t etl-pipeline:0.1 .
```

Then run the etl job using docker:
```bash
  docker run --env-file .env etl-pipeline:0.1
```
