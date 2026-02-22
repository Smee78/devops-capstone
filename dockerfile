FROM node:18
WORKDIR /app
COPY app.js .
COPY index.html .
CMD ["node", "app.js"]
