FROM python:3.7

RUN pip install falcon gunicorn

EXPOSE 8001

COPY app.py app.py

CMD ['gunicorn', 'app:app', '--bind', ':8002']
