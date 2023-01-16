FROM python:3.8.10

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/app
RUN /usr/local/bin/python -m pip install --upgrade pip
COPY chakki/chakki chakki
COPY chakki/purji purji
COPY chakki/udhari udhari
COPY chakki/requirments.txt requirments.txt
COPY chakki/manage.py manage.py
RUN pwd
RUN cd chakki && ls -lrt
RUN pip install -r requirments.txt --user
RUN python manage.py makemigrations
RUN python manage.py migrate
COPY . .

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]