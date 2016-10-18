FROM quay.octanner.io/base/oct-scala:2.11.7-sbt-0.13.11
WORKDIR /app
COPY . /app/

RUN echo "$(java -version)"
RUN sbt stage

EXPOSE 9000
ENTRYPOINT ["./target/universal/stage/bin/play-getting-started -Dhttp.port=${PORT}"]
