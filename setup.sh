az group create --name RgLadder --location CentralIndia
az vm create --resource-group RgLadder --name VMLadder01 --image UbuntuLTS --admin-username markpeng --generate-ssh-keys --size  Standard_B1s --custom-data SS.txt  
az vm open-port --resource-group RgLadder --name VMLadder01 --port 443 --priority 1001
