FROM ruby:2.3-slim

ENV BUNDLE_PATH ./vendor/bundle
ENV HOME /home/app

WORKDIR $HOME

RUN groupadd -r app && useradd -r -g app app

RUN \
  apt-get update \
  && apt-get install -y --no-install-recommends \
    build-essential \
    nodejs \
    libpq5 \
  && apt-get clean

USER app

ADD . $HOME

EXPOSE 4000

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "--binding", "0.0.0.0", "-p", "4000"]
