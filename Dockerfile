# Gunakan image Node.js versi ringan sebagai base image
FROM node:18-alpine

# Set working directory dalam container
WORKDIR /app

# Salin file package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh file aplikasi ke dalam container
COPY . .

# Tetapkan environment variables
ENV NODE_ENV=production
ENV PORT=3000

# Ekspos port 3000
EXPOSE 3000

# Jalankan server pada port 3000
CMD ["npm", "run", "start"]
