FROM python:3.12.0al-buster
RUN apt-get update&&\
    /usr/local/bin/python3 -m pip install - upgrade pip &&\
    /usr/local/bin/python3 -m pip install - upgrade setuptools &&\
    adduser myuser

ENV QR_CODE_IMAGE_DIREXTORY='static'
ENV QR_CODE_DEFAULT_URL='https://www.njit.edu'
ENV QR_CODE_DEFAULT_FILE_NAME='default.png'
WORKDIR /home/myuser
COPY --chown=myuser:myuser . .
RUN pip3 install -r requirements.txt
ENTRYPOINT ["runuser", "-u", "myuser"]