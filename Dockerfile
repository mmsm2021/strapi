FROM strapi/base
WORKDIR /srv/app
COPY ./package.json ./
RUN npm install
COPY ./strapi /srv/app
ENV NODE_ENV production
RUN npm run build
EXPOSE 1337
CMD ["npm", "run", "start"]
