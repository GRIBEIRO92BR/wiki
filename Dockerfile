FROM node:18

# Create app directory
WORKDIR /wiki

# Install dependencies
COPY . .

RUN yarn install

# Build wiki
RUN yarn build

EXPOSE 3000

CMD ["node", "server"]
