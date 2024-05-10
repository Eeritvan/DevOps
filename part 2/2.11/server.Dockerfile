FROM python:alpine

EXPOSE 5000

COPY *.py ./
COPY Modules ./Modules
COPY static ./static
COPY templates ./templates
COPY requirements.txt ./

RUN pip install -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0"]