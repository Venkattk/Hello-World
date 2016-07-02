FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install Flask

# Bundle app source
COPY ./python/test.py /src/test.py
COPY ./python/requirements.txt /src/requirements.txt

EXPOSE  80
CMD ["python", "/src/test.py", "-p 80"]
