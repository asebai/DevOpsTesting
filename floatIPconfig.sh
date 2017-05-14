echo seeking for a floating IP
myArray=($(openstack floating ip list | grep None | sort -R | head -1))

