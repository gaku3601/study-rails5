FROM bitnami/rails:5.2.3-0

COPY /app .
RUN sudo chown -R bitnami:bitnami /opt/bitnami
RUN sudo apt-get update && \
    sudo apt-get install libpq-dev && \
    bundle install
EXPOSE 3000

CMD rails db:migrate RAILS_ENV=production && \
    bundle exec puma -t 5:5 -e production -C config/puma.rb
