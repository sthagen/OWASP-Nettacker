FROM python:3.9.5
RUN apt update
WORKDIR /usr/src/owaspnettacker
COPY . .
RUN apt install -y aptitude
RUN cat requirements-apt-get.txt | xargs aptitude install -y
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN pip3 install -r requirements-dev.txt
CMD [ "python3", "./nettacker.py" ]
