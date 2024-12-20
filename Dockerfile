#
FROM python:3.11-slim

#
WORKDIR /mkt-orchestrator-dev

#
COPY requirements.txt .

#
RUN pip install -r requirements.txt

#
COPY . .

#
CMD uvicorn main:app --host=0.0.0.0 --port=${PORT:-8005}