FROM python:stretch

LABEL maintainer="Kelechi EMENIKE"
LABEL maintainerEmail="kcemenike@live.com"
LABEL purpose="For Udacity"


COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
