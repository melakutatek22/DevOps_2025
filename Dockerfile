FROM nginx:alpine

# Remove default static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site files
COPY . /usr/share/nginx/html

# Replace default nginx config with your own
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
