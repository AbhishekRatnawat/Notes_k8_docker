FROM ubuntu
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN usr/bin/pip3 install flask
COPY app.py /home/abhishek/work/python/app.py
ENTRYPOINT FLASK_APP=/home/abhishek/work/python/app.py flask run --host=0.0.0.0
