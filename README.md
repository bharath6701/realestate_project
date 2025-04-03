# realestate_project

# Laravel Project

## Requirements
- PHP (>=8.0)
- Composer
- MySQL or SQLite
- Node.js & NPM (optional for frontend)

## Installation

1. **Clone the repository**
   ```sh
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
Install dependencies

sh
Copy
Edit
composer install
Create environment file

sh
Copy
Edit
cp .env.example .env
Generate application key

sh
Copy
Edit
php artisan key:generate
Set up database

Configure .env file with DB credentials

Run migrations:

sh
Copy
Edit
php artisan migrate
Start the development server

sh
Copy
Edit
php artisan serve
Additional Commands
Run tests: php artisan test

Clear cache: php artisan cache:clear

Compile assets: npm install && npm run dev (if using frontend assets)
