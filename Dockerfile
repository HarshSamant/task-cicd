FROM node:20

# Set working directory
WORKDIR /app

# Copy frontend code
COPY frontend ./frontend

# Go inside frontend
WORKDIR /app/frontend

# Install dependencies
RUN npm install

# Expose port
EXPOSE 9089

# Run app
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "9089"]
