FROM node:6

MAINTAINER cpswan

# install node-red
RUN npm install -g node-red

# expose port
EXPOSE 1880


# Define mount points.
#VOLUME ["/data"]

# Set the default command to execute
# when creating a new container
CMD ["/usr/local/bin/node-red"]
CMD ls
ADD App data
CMD cd data
CMD ls
