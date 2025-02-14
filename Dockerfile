FROM node:22
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Required for Prod
EXPOSE 80
ENV PORT=80
CMD ["npm", "start"]