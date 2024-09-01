# /bin/sh/
# jenkins installation command

echo "========java installation========="
sudo apt update -y
sudo apt install default-jdk -y
java -version -y
sudo systemctl daemon-reload -y echo "(Register the Jenkins service with the command)"
echo "=========java installation complete====="

echo "=========jenkins installation========"
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
echo "=========Thank you for the installion Irfan============= "
