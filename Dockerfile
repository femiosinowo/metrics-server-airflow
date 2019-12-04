FROM centos/python-36-centos7

RUN pip install --upgrade pip \
        psycopg2-binary \
        prometheus_client \
        apache-airflow[postgres]

ADD metric-server.py .

CMD [ "python", "metric-server.py" ]
