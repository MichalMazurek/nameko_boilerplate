FROM python:latest

RUN mkdir -p /code/template
ADD . /code/template/
WORKDIR /code/template
RUN pip install . -U

CMD nameko run template.rpc

