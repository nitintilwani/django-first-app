FROM python
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python3","runserver","0.0.0.0:8000"]
