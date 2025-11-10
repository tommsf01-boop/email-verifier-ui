FROM nginx:alpine

# remove default nginx page
RUN rm -rf /usr/share/nginx/html/*

# copy our index.html into nginx web root
COPY index.html /usr/share/nginx/html/index.html

# expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
