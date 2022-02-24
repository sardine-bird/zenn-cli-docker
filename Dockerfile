FROM node:14
WORKDIR /work
RUN yarn global add zenn-cli

CMD ["npx", "zenn", "preview"]
