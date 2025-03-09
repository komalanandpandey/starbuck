
FROM nginx:latest
RUN mkdir app
RUN cd /app
RUN git clone https://github.com/komalanandpandey/starbuck.git
RUN cd /starbuck
COPY . /usr/share/nginx/html
RUN docker build -t mycust-img:v1
RUN docker images
RUN sudo docker run -d --name mycontainer -p 8081:80 141b4dee2197
