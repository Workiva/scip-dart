FROM drydock-prod.workiva.net/workiva/dart2_base_image:2
ADD pubspec.yaml pubspec.yaml
RUN dart pub get
FROM scratch
