FROM python:3.7

COPY requirement.txt /requirement.txt

COPY ./app /app

WORKDIR /

RUN pip install -r requirement.txt

ENTRYPOINT ["python"]

CMD ["app/main.py", "--reload"]