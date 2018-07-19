RUN python:3.4-alpine
ADD . /main
WORKDIR /main
RUN pip install -r Flask && \
    cd /main/ && \
    export FLASK_APP=hello.py
CMD ["flask", "run", "--host=\"0.0.0.0\""]
