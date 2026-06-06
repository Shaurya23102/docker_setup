FROM python:latest
#docker build -f Dockerfile -t pyapp . 
#docker build -f Dockerfile -t username/image:version .
#(here -t is used to tag file name and . at end it used so that docker can access all files in dirctory)
#docker run -it pyapp
#to push it in docker hub use docker build -f Dockerfile -t shaurya23102/pyapp . 
#then docker push shaurya23102/test:latest , docker push shaurya23102/test:v1 
EXPOSE 8000
CMD ["python", "-m", "htttp.server", "8000"]
#python -m http.server 8000 (this command is used to start a simple http server on port 8000)
#localhost:8000
#WORKDIR /app
#RUN echo "hello" > index.html
#RUN mkdir -p static_folder
COPY src/ .
#copying all files from static_html to static_folder in container
#WORKDIR /app
#COPY ./static_html .
