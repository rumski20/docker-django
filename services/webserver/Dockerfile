FROM nginx:1.11

# Add start script
ADD ./services/webserver/config/start.sh /
RUN chmod +x start.sh

# Add nginx config file
ADD ./services/webserver/config/nginx.tmpl /

# Add SSL certs to location specified in nginx.conf
ADD ./services/webserver/config/*.crt /etc/ssl/certs/
ADD ./services/webserver/config/*.key /etc/ssl/private/

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

# Execute start script
CMD ["./start.sh"]
