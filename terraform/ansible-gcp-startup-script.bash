# Note to self - confirmed this worked on 12/5 by manually creating a VM (test-jenkins-startup)
# and adding this as the startup script

adduser e91user
echo e91user 'ALL=(ALL) NOPASSWD:ALL'>>/etc/sudoers.d/e91user
mkdir /home/e91user/.ssh
# Andrew
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC99lJBOmgh4TjUYoaREscz0406v86m01Fbi5/GDsD2g1s1Wmhp/IxOx3ndsYcaTfj/1+6fACqwdT5/99r9SJl57XPyAS377rT8vJQkjOnSXoKNCnBmwh8HT4eJ9xU2C9nEHkOqchxp4KoCGhW9MtDhrPB9UYc7YR5pzjcgVTQx4wWO2rBbvfp3wyjmoRoaOQM1iEP0THyR36V8nZVPNH2LNqPryNiUbbIJLriiaPQdY2tsnYHBFcChpubntWkzs+K5woG3Jf5kzauUBBpweXpn7zWm0SxmMklm7jr5OboIRsm+NOTlWw4Xk2KdCD+oUImURA+TNKppefMIgvN3pHAJ andrewr@tw-mbp-andrewr" > /home/e91user/.ssh/authorized_keys
# ABID
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHrKM6Qvag+Snemu2v6SuxUyq9iIXQvY9PB5gCm8rW45gkAh3xTNGoB7t51X4NPvU5Y7YMxWBUQJXwPUXOhUUYTfMZ5cI9oaIijyLNLYwWPVtegMwwlcVYBzkES0P0mAtR6qHPaVE6Lj2vjWCkQwMLsYbsquzqezszwuv1DQRzzRkOiXE39h9IkhW3BduQaNrZQkJZJ2H0cpZkPXOfy631DQ1XuQ/UKT0U32HUA7Flhzrek8D1Xps/DE0AkxtIV0N9FEQHOO3bLKLE47RiUV4EfRSuroR+UWi+WQEnZfLtUNO5Xe1jhAartqxakN1D+/4pA/2ZUXect8Rw/QHcrxmT abid@Abids-MBP" >> /home/e91user/.ssh/authorized_keys
# Pulkit
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDA360+Cy5tW675l/EuvPoJXJHvzvy6ZBiztzlMwgarZSw6xXmHPmh8wHkbd2pHMRNjDr9Claxg6UxXu0CUKiiF7TDFxO3pC3O+fD5Y/e/WY1vMdvLq2qBYkkObr0aDrv356gjqrvARc6pYAap/faOUqwg4iEk4tgL6a1jptjOJIUVRchRT1XxPbHSvJDCIaQOYJyn06oFq14KHQk75/gxKjzQM6rQTqHcINgIBg14waa1vF6Vmdior4kGuydr62wbPlWqavVZblx/BeE1ugAeTXCs52Fcj2Z3xq0Zw9wGZKpoZt1rUhothlfQV9jp67lwp3BOE4qP9MDlkVuEkQMfL " >> /home/e91user/.ssh/authorized_keys
# TA
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC60rCTYzWNayyBzDaGfurLhCq5n1gqMc16MdPVkEobTTcf/aCb/EEGowqVmWg6xuD1o0biASsljK62cr+S00OYFgi1hKIVycyaTRsp2I7C5CTpfhh+ylGLHHJXk05dilz/YF6PcsmK3Rbh8NFS/s3qaeRkCcFgXa7zZV/3tjmSb+mCW673m2MJfJueT5+OIHVV6BMjzuM84TunX9ayUmMudXqQ7K/G2+bFueuaTa9lwER3618w+SQWx0FGuE9bDv1iqFpVfWXF2pd/4z+CK/j2S4ABAZ0MlZd+zMxHBm4G03mbKCuZ8mnj8v0kN41rg+3+AzMwGNiE2nx+TEZTsrJXX" >> /home/e91user/.ssh/authorized_keys

chown -R e91user.e91user /home/e91user/.ssh
chmod 700 /home/e91user/.ssh
chmod 600 /home/e91user/.ssh/authorized_keys

mkdir -p /root/.ssh
chmod 700 /root/.ssh

# id_rsa
cat > /root/.ssh/id_rsa << EOF
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABFwAAAAdzc2gtcn
NhAAAAAwEAAQAAAQEA0p6f7kJQjj2o8eYW7wkuHDEBAeZCJEuLYcr1sJDSrydOoVH2xweN
bsCLrjfm3iVV+usuvqwEyd6Ng7eWLU+Dn9RkNgaQKmeAOJI/+tEgONBJ8eZSmqJ7QCbH2V
R1PNdPffFRygcz3/JhI3IRD7pRclztO9TIacWgjNCOtH0K+fUNGBOcyTvjrh/Gh1oSBTxe
uekFfsi8ERddQ4CJB07LuKezNecC+/ezRX/d3QUG9bER15XCHhAyFWEWYIGnSZMmvFRcQI
h/ppqh3lApTnFDgR2pUARpFufCe7ItEBUAT/cYFpW3gSnoCZFwb3CR74yCGGORIJh2G7Ok
tBKk1IkYIwAAA9CZHBIAmRwSAAAAAAdzc2gtcnNhAAABAQDSnp/uQlCOPajx5hbvCS4cMQ
EB5kIkS4thyvWwkNKvJ06hUfbHB41uwIuuN+beJVX66y6+rATJ3o2Dt5YtT4Of1GQ2BpAq
Z4A4kj/60SA40Enx5lKaontAJsfZVHU810998VHKBzPf8mEjchEPulFyXO071MhpxaCM0I
60fQr59Q0YE5zJO+OuH8aHWhIFPF656QV+yLwRF11DgIkHTsu4p7M15wL797NFf93dBQb1
sRHXlcIeEDIVYRZggadJkya8VFxAiH+mmqHeUClOcUOBHalQBGkW58J7si0QFQBP9xgWlb
eBKegJkXBvcJHvjIIYY5EgmHYbs6S0EqTUiRgjAAAAAwEAAQAAAQEAiv6n6OLWqqhCgDEq
XWGfjndAhPJiH/XC7Cy262kHwROdrpSa2UpAqiBjjfvSXjQhg9AFL0vydQ5sMcrMTua0pJ
vT7ltydKmNUsghdPLh4tyCkCNBzE8CK5nsNZ6pKBennCPPqBYMw/P+6xdx7wE0ktaEsQGB
qVwE0ikopDAJOF6uRkQogme2JOWi6Dk9WqQ5EQW9pqDAJkJTPPASGctG9wO0UaeP2dTtUq
aGdY+eOYGe4WOdAUqZ0dBCvAQdawTnrBMIWXgA/za9V9hQ3VD3rcXOzZqZAr+zHMiUXesd
yRG4ExlAjnr4xxcEfgFnNQ52xUzpiku8pinsTPOnr1mLEQAAAIA/AdIcEn/1nmjhV9yuL7
bhl/FwlQBQVIoEzy69Duz8jRMQPrlsDzbbmy/2NB9bfljTgnm+mGW5cBlpP6lgSPRXaI5D
zrxD2YWaSUY/IpmykqOhG21UVdRxIX+cTguLdGLfrT0V/T2tIcezuX/v6o0h3OTzTzBhrs
e0/ijMViSAvAAAAIEA/OJy1/S+6l7DCD7+UmlgzuoDSyxjjyX/k6NXmpqeueQ1lbuRfLxo
D3ogNnGTXvlXXhaNYw7m/YVWUJ6nuM4+9BU15z538DcgmtVMgETuSnjulJ/pf/N6+L2Li6
YJYEmzWtXHyTsdhzcPBqhPYiyUQFwAqZBBOm8hex+jqY9hc78AAACBANU24Vps5y64WyuD
m4LhO1KBvLRjhcv7SOIllHaESO5ifN4+BPf+KZyffZMCnd958TdjZt95YAt+YQuyBMb1lF
5OXTt1uKjGEwU7e3tbHOwKh+kvqiwfXDowxQq2LfstWGPbwgkTp/iuhc0nL1yK5/3/1419
9dvVQVo6vHJVEeSdAAAAFmFuZHJld3JAdHctbWJwLWFuZHJld3IBAgME
-----END OPENSSH PRIVATE KEY-----
EOF


chmod 600  /root/.ssh/id_rsa 
ssh-keygen -y -f ~/.ssh/id_rsa > /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys

chmod 644 /root/.ssh/known_hosts
chown -R root.root /root/.ssh

yum install git -y 
yum install ansible -y
updatedb
rm -fr /etc/ansible

# Become root user to clone repo
sudo su -
# Clone our repo into this machine to have access to the ansible setup
git clone git@code.harvard.edu:pub009/cscie91-final-project.git /etc/ansible
