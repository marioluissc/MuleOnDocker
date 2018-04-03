FROM node:6

MAINTAINER cpswan

# install node-red
RUN npm install -g node-red

# expose port
EXPOSE 1880

# Define mount points.
#VOLUME ["/data"]
CMD cd $HOME/.node-red
CMD ls

ADD App $HOME/.node-red

CMD ls