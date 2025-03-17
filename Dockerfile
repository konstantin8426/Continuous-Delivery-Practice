# Використання офіційного образу Node.js
FROM node:18-alpine  

# Встановлення робочої директорії
WORKDIR /app  

# Копіювання package.json і package-lock.json
COPY package*.json ./  

# Встановлення залежностей
RUN npm install  

# Копіювання всього коду в контейнер
COPY . .  

# Відкриття порту для доступу до додатка
EXPOSE 3000  

# Запуск додатка
CMD ["node", "server.js"]
