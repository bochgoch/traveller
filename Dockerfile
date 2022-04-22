FROM node:12.18.1
 
WORKDIR /app
 
COPY package.json package.json
COPY package-lock.json package-lock.json
 
RUN npm install
 
COPY . .
 
CMD [ "node", "app.js" ]
#docker run -d --publish 8000:3000 traveller 
#docker push bochgoch/traveller 