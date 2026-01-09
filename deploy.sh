#!/bin/bash

echo "======================================"
echo " Genrated by: Ankit "
echo " Generated on: $(date | awk '{print $1, $2, $3, $4}') "
echo "======================================"

# Define the Variables
GIT_URL = "YOUR_GITHUB_REPO_URL"  # provide your github repo
SERVICE_NAME = "your_service_name"  #  e.g., nginx, apache2, or your custom systemd service name
GIT_BRANCH = "main"
DEPLOY_DIR = "your/src/app/" # the local directory which has that application 

echo "Starting deployment script..."

if ! dpkg -s git &> /dev/null; then
    echo "❌ Git is not installed. Installing Git..."
     # Update package list and install git (for Debian/Ubuntu)
     sudo apt-get update && sudo apt-get install -y git
     check_status "Git installation"
else
     echo "✅ Git is already installed."
fi


# Navigate to application directory 
cd "$DEPLOY_DIR" || { echo "❌ Error: Failed to change directory to $DEPLOY_DIR"; exit 1; }

# Pull the latest code from the main branch
echo "Pulling latest code from Git branch $GIT_BRANCH..."
git pull origin "$GIT_BRANCH"

if [ $? -eq 0 ]; then
   echo "✅ Git pull successful."
else
   echo "❌ Error: Git pull failed. Exiting."; exit 1;
fi

# Restart the service to apply the changes
echo "Restarting service: $SERVICE_NAME..."

# Use systemctl for restarting services in mordern Linux systems
sudo systemctl restart $SERVICE_NAME

if [ $? -eq 0 ]; then
    echo "✅ Service $SERVICE_NAME restarted successfully."
    echo "Deployment complete!"
else
    echo "❌ Error: Failed to restart service $SERVICE_NAME."
    echo "Deployment failed!"
    exit 1;
fi

echo ""
echo "================================"
echo "✅ DEPLOYMENT COMPLETED!"
echo "================================"
echo " Location: $DEPLOY_DIR"
echo " Service: $SERVICE_NAME"
echo " URL: http://localhost:$APP_PORT"
