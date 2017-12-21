FROM nginx:1.13.7-alpine

copy ./nginx/default.conf /etc/nginx/conf.d/default.conf
copy ./index.html /public/
copy ./img /public/img
copy ./vendor /public/vendor
copy ./css /public/css