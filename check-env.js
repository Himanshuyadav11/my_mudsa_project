require('dotenv').config();

console.log("DATABASE_URL:", process.env.DATABASE_URL);
console.log("JWT_SECRET:", process.env.JWT_SECRET);
console.log("COOKIE_SECRET:", process.env.COOKIE_SECRET);

