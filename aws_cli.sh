aws ec2 run-instances --instance-type t2.micro --count 1 --key-name putty_pr.ppk --subnet-id subnet-04ffb7d80dea311ca --image-id ami-00c03f7f7f2ec15c3  --security-group-ids sg-03f92ee69f02a5fc3
echo "Jenkins instace created"

