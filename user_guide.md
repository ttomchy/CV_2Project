### Access AI Cluster

how to login :

```
ssh username@IP

```
then input your passwd.


### How to Run Applications With GUI
Some users may need to use softwares with GUI (e.g. matlab, pycharm), which is possible using ssh X11 forwarding. AI cluster is configured to support X11 forwarding, but users need to add extra lines into their ```.bashrc```  file to make X11 forwarding run properly. In order to enable X11 forwarding feature, add the following lines into ```.bashrc```:
```
export XAUTHORITY=/home/$(whoami)/.Xauthority
if [ -f "./DISPLAY" ]
then
        export DISPLAY=$(cat ./DISPLAY)
        xauth add $(cat ./DISPLAYSESSION)
fi
```
Then user should re-login AI cluster with

```
ssh -X username@IP

```

### Recommend to use the anaconda to manage your environment
  How to install ```anaconda   
  ``` ,please google it.

the docs about  ```conda```:  https://conda.io/docs/


### Install some softwares in your username

try to use ```--prefix=your directory``` , install your software in specific directory because you are not the ```sudo users```

### How to Upload/Download your file to/from The Cluster

Users can use ```scp```  upload files to AI clusters. Here are some examples using ```scp```:
```
# Copy local folder "/home/username/local-dir" to AI cluster directory "/home/username/"
scp -r /home/username/local-dir username@10.19.124.11:/home/username/

# Copy file "/home/username/project1/result.txt" from AI cluster to path "/home/username/results" on local PC
scp -r username@10.19.124.11:/home/username/project1/result.txt /home/username/results/

```


### Finally the most important thing of how to use the clusters


You should write a script to  run your own work , here is a tutorial of how to use the ```PBS
``` https://wikis.nyu.edu/display/NYUHPC/Copy+of+Tutorial+-+Submitting+a+job+using+qsub
