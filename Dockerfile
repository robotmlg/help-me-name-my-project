FROM python:3.10.10-alpine3.16

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY hmnmp /app/hmnmp
COPY name_project /app/name_project
COPY static /app/static
COPY manage.py /app/
COPY run.sh /app/

EXPOSE 8000

CMD ["sh", "run.sh"]
