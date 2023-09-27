yum install nginx -y &>> /tmp/roboshop.log
echo -e "\e[31m Nginx Seever Installed nginx\e[0m"
systemctl start nginx &>> /tmp/roboshop.log
systemctl enable nginx &>> /tmp/roboshop.log
echo -e "\e[31m Nginx server started and enabled successfully\e[0m"
cd /usr/share/nginx/html
rm -rf *
echo -e "\e[31m Default server content removed\e[0m"
curl -O https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
unzip frontend.zip
echo -e "\e[31m New Content added successfully\e[0m"
rm -rf frontend.zip
systemctl restart nginx
echo -e "\e[31m Nginx server started successfully with new app content\e[0m"


