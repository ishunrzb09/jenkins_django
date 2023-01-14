FROM python:3.4

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/app
RUN cd chakki

COPY chakki chakki
COPY purji purji
COPY udhari udhari
COPY requirments.txt requirments.txt
COPY manage.py manage.py
RUN pip install -r requirements.txt
COPY . .

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]