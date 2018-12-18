FROM python:3

RUN pip install moto[server] ipython boto3

COPY . /aws/

WORKDIR /aws

EXPOSE 9000

ENTRYPOINT ["/aws/docker-entrypoint.sh"]

CMD ["help"]

