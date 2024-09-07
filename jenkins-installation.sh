#!/bin/bash

# Step 1: Update the system
echo "Updating the system..."
sudo dnf update -y

# Step 2: Install Java
echo "Installing Java..."
sudo dnf install java-17-amazon-corretto -y

# Step 3: Verify Java installation
echo "Verifying Java installation..."
java -version

# Step 4: Add Jenkins repository
echo "Adding Jenkins repository..."
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Step 5: Import Jenkins key
echo "Importing Jenkins key..."
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Step 6: Install Jenkins
echo "Installing Jenkins..."
sudo dnf install jenkins -y

# Step 7: Start and enable Jenkins service
echo "Starting and enabling Jenkins service..."
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Step 8: Print message to access Jenkins
echo "Jenkins has been installed. You can access it via http://your_amazon_linux_instance_ip:8080"

Step 3: Make the Script Executable
Once you’ve written the script, you need to make it executable by running the following command:
--> chmod u+x Install_jenkins.sh

Step 4: Run the Script
Now, you can run the script whenever you want to install Jenkins by typing:
-->sh Instal_jenkins.sh
