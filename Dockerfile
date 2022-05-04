FROM python:3.9
RUN apt-get update -y
RUN apt-get upgrade -y

WORKDIR /app/support_service

COPY ./requirements.txt ./
RUN pip install -r requirements.txt
COPY ./ ./

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]