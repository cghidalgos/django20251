FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY entrypoint.sh /code/entrypoint.sh
COPY requirements.txt /code/
RUN pip install -r requirements.txt
RUN chmod 777 -R /code/*
ENTRYPOINT ["sh","/entrypoint.sh" ]
COPY . /code/
