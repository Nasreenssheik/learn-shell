echo -e "\e[31m Creating A repo\e[0m"
cp /root/learn-shell/mongodb.repo /etc/yum.repos.d/mongodb.repo
yum install mongodb-org -y
