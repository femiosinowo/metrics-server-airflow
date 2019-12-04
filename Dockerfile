FROM python:3

ADD metric-server.py /

RUN pip install pystrich airflow

CMD [ "python", "./metric-server.py" ]
