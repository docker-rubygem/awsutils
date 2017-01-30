FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.1.6

RUN gem install awsutils --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["awslogs"]
CMD ["--help"]
