FROM python:3.7.10-slim-buster

ENV SECRET_KEY='5vUCOVMkF2JNhH2CmzY4BnhDiiUtv+reNq2wwxbw31E='

WORKDIR /app

COPY . /app/backend

RUN apt update && apt install -y \
python3-pip python3-dev graphviz libgraphviz-dev pkg-config \
&& pip3 install -r backend/requirements.txt \
&& apt-get remove -y python3-pip python3-dev graphviz libgraphviz-dev pkg-config  \
&& apt-get autoremove -y && apt-get clean -y

EXPOSE 8000

CMD ["python3", "/app/backend/manage.py", "runserver", "0.0.0.0:8000"]
