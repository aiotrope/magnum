FROM node:16.19-alpine

# Create app directory
WORKDIR /usr/src/app

# ENV
ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

# Install app dependencies
COPY package*.json ./

ENV CI=true

RUN npm install

# Copy app source code
COPY . .

RUN npm run build


#Expose port and start application
EXPOSE 3000

CMD ["npm", "start"]