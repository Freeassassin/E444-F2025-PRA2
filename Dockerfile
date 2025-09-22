FROM python:3.13-alpine

WORKDIR /home/flasky

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt

COPY templates templates
COPY hello.py ./

# run-time configuration

CMD [ "venv/bin/python", "hello.py" ]
