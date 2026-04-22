
FROM python:3.10
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

EXPOSE 5000

# Run app
CMD ["python", "app.py"]