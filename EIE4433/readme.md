# Note of Essay

## Target

Around 10 techniques 

Source Code of general function, library or package. Implement part of the code.

Implement 7 techniques

Write 10-15 pages literature review and use 1/4 to describe one technique

## Archive Film Defect Detection and Removal: An Automatic Restoration Framework

The system is composed of mainly two modules: defect detection and defect removal

Use Temporal & spatial information

Need to train a hidden Markov Model & 

### Introduction

the restored frame from a clip we call Cliff



### Moving edge detection

Because there are Falsed alarms near moving edge 

# Dlib 问题的解决

https://www.cnblogs.com/adaminxie/p/9032224.html

不用原生的pip

# pytorch install

https://zhuanlan.zhihu.com/p/54350088

# pytorch gpu install

https://blog.csdn.net/baidu_26646129/article/details/88380598

打开设置在搜索里输入控制面板，打开控制面板点击“硬件和声音”选项，然后选择Nvidia面板。 在Nvidia面板中点击帮助，选择系统信息选择组件，找到“NVCUDA.DLL”，即可看到支持的CUDA版本

My: GTX1060 9.0.176

# cuda and cudnn install

https://zhuanlan.zhihu.com/p/94220564

# pytorch for cuda 9.0

https://blog.csdn.net/qq_28413435/article/details/83338551

# Solved

在GeForce experience上下载最新驱动
1. 下载cuda 10.2
2. 下载 cudnn for 10.2, 复制粘贴三个文件到cuda安装目录
3. 下载pytorch
4. 查看cuda 版本
~~~
nvcc -V
~~~
查看显卡驱动 cmd
~~~
nvidia-smi
~~~
