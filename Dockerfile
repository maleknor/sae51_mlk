FROM ubuntu:22.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install npm nodejs
RUN npm install -g @dbml/cli
RUN npm install -g @softwaretechnik/dbml-renderer
RUN sed s/!this.table.settings?.headercolor/!this.table.settings.headercolor/ /usr/local/lib/node_modules/@softwaretechnik/dbml-renderer/lib/renderer.js > rgerg
RUN cp rgerg /usr/local/lib/node_modules/@softwaretechnik/dbml-renderer/lib/renderer.js
RUN nodejs --version
RUN npm --version
