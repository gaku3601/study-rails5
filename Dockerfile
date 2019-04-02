FROM bitnami/rails:5.2.3-0

COPY /app .
RUN sudo apt-get update && \
    sudo apt-get install libpq-dev && \
    bundle install
RUN rails db:migration
EXPOSE 3000

CMD sudo bundle exec puma -t 5:5 -e production -C config/puma.rb
