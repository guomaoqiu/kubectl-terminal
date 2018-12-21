# if env has PASSWORD 
if [ $PASSWORD ];then
        echo term:$PASSWORD | chpasswd
fi

# for information
wget -O /etc/motd https://blog.sctux.com/motd

# create term user kubeconfig
mkdir /home/term/.kube

# link to system path 
ln -sv /app/kubelet/kubectl /usr/local/bin/kubectl

# kubelet command complication
kubectl completion bash >> /home/term/.bashrc
/bin/cp /app/.bash_profile /home/term/.bash_profile

# use setfacl for term user read permissions
setfacl -m u:term:r /home/term/.kube/config

