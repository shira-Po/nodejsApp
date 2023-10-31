FROM node:18-alpine

# הגדרת ספריית העבודה (working directory) של התמונה
WORKDIR /app

# העתקת קבצי האפליקציה לתמונה
COPY . /app

# התקנת תלות npm של האפליקציה
RUN npm install

# חשיפת פורט 3000
EXPOSE 3000

# הגדרת פקודת ההפעלה של התמונה (entrypoint)
CMD [ "node", "index.js" ]