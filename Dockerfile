FROM python:3.9.5-slim 

COPY . /app 
WORKDIR /app

RUN python3 -m venv /opt/venv


RUN /opt/venv/bin/pip install -r requirements.txt 

RUN chmod +x entrypoint.sh

CMD["/app/entrypoint.sh"]


