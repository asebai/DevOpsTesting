echo seeking for a floating IP
myArray=($(openstack floating ip list | grep None | sort -R | head -1))
echo here is an available IP : "${myArray[3]}"
echo openstack server add floating ip TSTDEVOPSD01 "${myArray[3]}"
echo add dominos security group
echo openstack server add security group TSTDEVOPSD01 DOMINOS
