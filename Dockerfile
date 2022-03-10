FROM python:3.7-alpine3.14

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

# install requirements.txt
ADD requirements.txt /code/
RUN pip install -r requirements.txt

ADD . /code/

ENTRYPOINT ["python"]
CMD ["application.py"]
