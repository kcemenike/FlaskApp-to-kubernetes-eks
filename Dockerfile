FROM python:3.7-stretch

LABEL maintainer="Kelechi EMENIKE"
LABEL maintainerEmail="kcemenike@live.com"
LABEL purpose="For Udacity"

# copy current directory to /app
COPY . /app 
# set /app as working directory
WORKDIR /app

# install pip
RUN pip install --upgrade pip

# copy requirements.txt to current folder
COPY requirements.txt ./
# install requirements file
RUN pip install --no-cache-dir -r requirements.txt

# start app with gunicorn
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
