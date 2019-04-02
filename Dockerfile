FROM bitnami/rails:5.2.3-0

COPY /app .
RUN sudo apt-get update && \
    sudo apt-get install libpq-dev && \
    bundle install
EXPOSE 3000

CMD [ "rails", "server", "-b", "0.0.0.0" ]