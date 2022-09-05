FROM nginx:alpine

# remove nginx configuration file
RUN rm /etc/nginx/conf.d/*

#copy new nginx configuration file
COPY default.conf /etc/nginx/conf.d/

#copy html page
COPY index.html /usr/share/nginx/html