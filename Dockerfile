FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Use ENTRYPOINT with CMD to allow test execution
ENTRYPOINT ["npm"]
# Define the default command to run the app
CMD ["start"]
