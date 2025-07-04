# ────── 1️⃣  BUILD STAGE ───────────────────────────────────────
FROM node
WORKDIR /app

# copy only package manifests first, so dependencies are cached
COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 3000

CMD ["npm", "start"]