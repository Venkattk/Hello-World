FROM alpine:3.1
RUN apk add --update g++ make
COPY ./cpp/* /src/cppdemo/
WORKDIR /src/cppdemo
RUN make
CMD ./demo
