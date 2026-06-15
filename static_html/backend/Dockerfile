FROM python:latest
RUN python -m venv /opt/venv
ENV PATH = /opt/venv/bin:$PATH #to ensure aeverything after this is running on venev
#docker build -f Dockerfile -t pyapp . 
#docker build -f Dockerfile -t username/image:version .
#(here -t is used to tag file name and . at end it used so that docker can access all files in dirctory)
#docker run -it pyapp
#to push it in docker hub use docker build -f Dockerfile -t shaurya23102/pyapp . 
#then docker push shaurya23102/test:latest , docker push shaurya23102/test:v1 
WORKDIR /app
EXPOSE 8000
CMD ["python", "-m", "htttp.server", "8000"]
#python -m http.server 8000 (this command is used to start a simple http server on port 8000)
#localhost:8000
#WORKDIR /app
#RUN echo "hello" > index.html
#RUN mkdir -p static_folder
COPY require.txt /temp/require.txt
RUN pip install -r /temp/require.txt
COPY . . 
#copying all files from static_html to static_folder in container
#COPY ./static_html .
