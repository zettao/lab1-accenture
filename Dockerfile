FROM python:3.4-alpine
ADD . /lab1-accenture
WORKDIR /lab1-accenture
RUN pip install -r Flask && \
    cd /lab1-accenture/ && \
    export FLASK_APP=hello.py
CMD ["flask", "run", "--host=\"0.0.0.0\""]
