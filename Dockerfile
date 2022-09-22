FROM node:16

WORKDIR /usr/src/app
COPY . .
RUN npm -g config set user root
RUN npm install -g expo-cli
RUN npm install

EXPOSE 19000
EXPOSE 19001
EXPOSE 19002

CMD ["expo", "start", "--no-dev", "--minify", "--offline", "--non-interactive", "--tunnel"]