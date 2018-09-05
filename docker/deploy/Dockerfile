# The deploy Docker image build a self-contained Ray instance suitable
# for end users.

FROM registry.cn-qingdao.aliyuncs.com/inspir-ray/base-deps:0.5.0
ADD ray.tar /ray
ADD git-rev /ray/git-rev
COPY start_head.sh /ray
COPY start_node.sh /ray
WORKDIR /ray/python
RUN pip install -e .
WORKDIR /ray
