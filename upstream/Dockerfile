FROM odo-docker-signed-local.artifactory.oci.oraclecorp.com/oci-oel7x-python36:1.0.307
ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000 8001 8002 8003

ENTRYPOINT ["python3"]
CMD ["server_docker.py", "-p", "8000"]