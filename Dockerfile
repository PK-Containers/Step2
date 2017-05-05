FROM python:2.7.13

EXPOSE 8080

RUN mkdir -p /usr/src/app
RUN mkdir -p /usr/src/app/services
RUN mkdir -p /usr/src/app/database
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
COPY dependencies.ini /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY run.py /usr/src/app/run.py
COPY services /usr/src/app/services
COPY database /usr/src/app/database


CMD [ "python", "run.py" ]
