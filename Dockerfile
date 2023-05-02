FROM python:3-alpine

ENV FLASK_APP=api.app

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY . .

EXPOSE 5000
CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]

# docker build -t flask-service-1 . 
# docker run -d -p 5000:5000 --name=flask-service-1a flask-service-1