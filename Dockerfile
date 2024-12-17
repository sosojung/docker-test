FROM python:3.10

WORKDIR /app

COPY main.py /app/main.py
COPY requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir -r /app/requirements.txt

CMD ["uvicorn", "main.py", "--host", "0.0.0.0", "--port", "8000"]