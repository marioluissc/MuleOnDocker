FROM node:6

MAINTAINER cpswan

# install node-red
RUN npm install -g node-red

# expose port
EXPOSE 1880

# Define mount points.
#VOLUME ["/usr/local/bin/node-red"]
VOLUME ["/usr/local/.node-red"]
VOLUME ["$HOME/.node-red"]


CMD cd $HOME/.node-red
CMD ECHO "HOME NODE RED" 
CMD ls



ADD App $HOME/.node-red
CMD ECHO "AFTER ADDING FILES" 
CMD ls

CMD ECHO ".node red folder" 
CMD cd /usr/local/.node-red
CMD ls
ADD App /usr/local/.node-red


CMD ["/usr/local/bin/node-red"]
