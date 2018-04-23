FROM haskell:8.0.2

WORKDIR /app

ADD . /app

RUN stack setup
RUN stack build --test --copy-bins

EXPOSE 80

CMD ["run-server"]
