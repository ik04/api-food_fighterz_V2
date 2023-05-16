FROM python:3.10.6

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt 

EXPOSE 5000

CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]
