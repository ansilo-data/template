# By default we use the ansilo base image
# Your organisation may have a custom base image that you want to reference here
FROM get.ansilo.tech/ansilo-prod

# Copy the ansilo configuration files into the image
ADD . /app/

# Optimise the image for fast startup
RUN ansilo build

# By default, the container will start the ansilo server
# ENTRYPOINT [ "ansilo" ]
# CMD [ "run" ]