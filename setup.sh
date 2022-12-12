az group create --name Ladder --location SouthIndia
az vm create --resource-group RgLadder --name VMLadder01 --image UbuntuLTS --admin-username markpeng --generate-ssh-keys --size  Standard_B1s --custom-data SS.txt  
az vm open-port --resource-group Ladder --name myLadder01 --port 443 --priority 1001
