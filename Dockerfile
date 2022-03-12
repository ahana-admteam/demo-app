FROM python:3-alpine

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

# install requirements.txt
ADD requirements.txt /code/
RUN pip install -r requirements.txt

ADD . /code/

ENTRYPOINT ["python"]
CMD ["application.py"]
