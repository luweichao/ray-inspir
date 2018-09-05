# The deploy Docker image build a self-contained Ray instance suitable
# for end users.

FROM 192.168.1.40:5000/inspir-ray/base-deps
ADD ray.tar /ray
ADD git-rev /ray/git-rev
COPY start_head.sh /ray
COPY start_node.sh /ray
WORKDIR /ray/python
RUN pip install -e .
WORKDIR /ray
