# By default we use the Ansilo base image
# Your organisation may have a custom base image that you want to reference here instead
FROM timetoogo/ansilo

# Copy the configuration files into the image
ADD . /app/

# Optimise the image for fast startup
RUN ansilo build

# By default, the container will start the Ansilo server
# ENTRYPOINT [ "ansilo" ]
# CMD [ "run" ]
