az group create --name RgLadderUS --location WestUS3
az vm create --resource-group RgLadderUS --name VMLadder02 --location WestUS3 --image UbuntuLTS --admin-username markpeng --generate-ssh-keys --size  Standard_B1s --custom-data SS.txt  
az vm open-port --resource-group RgLadderUS --name VMLadder02 --port 443 --priority 1001
