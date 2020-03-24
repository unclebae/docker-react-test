# Build Step named as builder
FROM node:alpine as builder 
WORKDIR '/app'
COPY package.json .
RUN npm install 
COPY . .
RUN npm run build

# Run Step
FROM nginx as run 
COPY --from=builder /app/build /usr/share/nginx/html

# docker run -p 8080:80 <contianer-id> 


