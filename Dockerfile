FROM node

# RUN useradd -ms /bin/bash newuser

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# RUN chown newuser /usr/

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# USER newuser

EXPOSE 8080
CMD [ "npm", "start" ]
