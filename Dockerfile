FROM python
WORKDIR /app
COPY requirements.txt .
RUN apt update
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3","runserver","0.0.0.0:8000"]
