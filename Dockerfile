FROM python
WORKDIR /app
COPY requirements.txt .
RUN apt update
RUN pip install -r requirements.txt
COPY . .
CMD ["python3","mysite/manage.py","runserver","0.0.0.0:8000"]
