## Build Angular app
FROM node:16-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
# Build production bundle
RUN npm run build -- --configuration production

## Serve with Nginx
FROM nginx:alpine
COPY --from=build /app/dist/AirbusInventory /usr/share/nginx/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]


