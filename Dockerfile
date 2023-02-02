# builder phase (stage)
FROM node:16-alpine as builder

WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
# copy from the builder phase the build folder
COPY --from=builder /app/build /usr/share/nginx/html