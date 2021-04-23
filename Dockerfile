FROM python:3.7.10-slim-buster
    
WORKDIR /app/

COPY . /app/

RUN apt update

RUN apt install -y \
python3-pip python3-dev graphviz libgraphviz-dev pkg-config

RUN pip3 install -r requirements.txt
   
EXPOSE 8000   
    
CMD ["python", "/app/backend/manage.py", "runserver"]
