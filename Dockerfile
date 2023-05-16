FROM python:3.10.6

COPY requirements.txt  .

WORKDIR /app

RUN pip3 install -r requirements.txt 

COPY . .


EXPOSE 5000

CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]
