FROM node:13
RUN mkdir -p /src/user/app
WORKDIR /src/user/app
COPY package*json ./
COPY . .
RUN npm install
CMD ["node","app.js"]