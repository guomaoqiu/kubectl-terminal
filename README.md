For CKA

![](https://raw.githubusercontent.com/guomaoqiu/kubectl-terminal/master/screenhost/result.png)

目的: 为熟悉Web terminal的使用方式，为CKA做准备

食用方式:

容器内跑的是gateone web terminal程序，端口暴露3000，我这里映射到节点的是30000

master节点运行该pod，pod挂载该master节点上的kubeconfig 到运行容器的用户家目录中，目的是让其用户可以通过kubeconfig于KubernetesApi交互

