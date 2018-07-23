FROM python:3.4-alpine
ADD . /lab1-accenture
WORKDIR /lab1-accenture
RUN pip install Flask && \
    cd /lab1-accenture/
CMD ["flask", "run", "--host=\"0.0.0.0\""]
