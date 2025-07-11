FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN npm install

# Install dotenv globally (just in case you need to test)
RUN npm install dotenv

# Install localtunnel globally
RUN npm install -g localtunnel

# Expose default Medusa port
EXPOSE 9000

# Run Medusa and tunnel it publicly
CMD sh -c "npx medusa develop & sleep 10 && lt --port 9000 --subdomain medusa-nodb"

