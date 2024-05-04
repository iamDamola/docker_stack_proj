#using an oficial python image runtime as a parent runtime 
FROM python:3.12-slim

#set the working directory to /app
WORKDIR /app

# Copy the current directory content into the container at /app

COPY . /app

#install ay needed packages specified in requirements.txt

RUN pip install --trusted-host pypi.python.org -r requirements.txt


# Make port 80 available to the world outside container

EXPOSE 80

#Define environment variable    
ENV NAME world

#Run app.py when the container launches
CMD ["python","app.py"]