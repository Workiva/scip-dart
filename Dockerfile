FROM dart:3.1.2 as builder

COPY . /sources
WORKDIR /sources
RUN dart compile exe -o scip_dart ./bin/scip_dart.dart

CMD ["scip_dart"]