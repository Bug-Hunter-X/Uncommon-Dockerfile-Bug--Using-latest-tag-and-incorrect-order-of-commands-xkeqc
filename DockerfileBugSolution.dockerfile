FROM ubuntu:20.04
COPY requirements.txt .
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install -r requirements.txt
CMD ["python3", "./app.py"]