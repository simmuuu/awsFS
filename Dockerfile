# Use the official Node.js 18 image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Install pnpm globally
RUN npm install -g pnpm

# Copy package.json and pnpm-lock.yaml (if available) to the working directory
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./

# Install dependencies using pnpm
RUN pnpm install

# Copy the entire project to the working directory
COPY . .

# Expose port 3001 for the Vite dev server
EXPOSE 3001

# Start the development server with host 0.0.0.0 and port 3001
CMD ["pnpm", "run", "dev", "--host", "0.0.0.0", "--port", "3001"]
