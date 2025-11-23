#!/bin/sh

# Railway deployment script
echo "Running post-deployment tasks..."

# Run migrations
php artisan migrate --force

# Seed database (only on first deployment)
# php artisan db:seed --force

# Clear and cache config
php artisan config:cache
php artisan route:cache
php artisan view:cache

echo "Deployment complete!"
