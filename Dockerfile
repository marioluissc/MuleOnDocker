FROM node:6

MAINTAINER cpswan

# install node-red
RUN npm install -g node-red

# expose port
EXPOSE 1880


# Define mount points.
#VOLUME ["/usr/local/bin/node-red"]

#ADD App /usr/local/bin/node-red/data

# Set the default command to execute
# when creating a new container
CMD ["/usr/local/bin/node-red"]
