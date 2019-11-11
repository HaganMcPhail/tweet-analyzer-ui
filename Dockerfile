FROM haganmcphail/tweet-analyzer-ui AS builder
WORKDIR /app
COPY . .
RUN npm run build

FROM mhart/alpine-node
RUN npm global add serve
WORKDIR /app
COPY --from=builder /app/build .
CMD ["serve", "-p", "80", "-s", "."]