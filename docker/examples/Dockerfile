# The examples Docker image adds dependencies needed to run the examples

FROM 192.168.1.40:5000/inspir-ray/deploy

# This updates numpy to 1.14 and mutes errors from other libraries
RUN conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/ \
    && conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/ \
    && conda config --set show_channel_urls yes
RUN conda install -y numpy
RUN apt-get install -y zlib1g-dev
#RUN pip install gym[atari] opencv-python==3.2.0.8 tensorflow
#RUN pip install --upgrade git+git://github.com/hyperopt/hyperopt.git
RUN pip install gym[atari] opencv-python==3.2.0.8 tensorflow-gpu -i http://mirrors.aliyun.com/pypi/simple --trusted-host mirrors.aliyun.com
RUN pip install --upgrade git+git://github.com/hyperopt/hyperopt.git -i http://mirrors.aliyun.com/pypi/simple --trusted-host mirrors.aliyun.com
RUN conda install pytorch-cpu torchvision-cpu -c pytorch
