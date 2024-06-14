FROM python:3.12

COPY . /FastChat/

WORKDIR /FastChat
RUN pip install fschat[model_worker,webui] -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install pydantic_settings -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install optimum -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install vllm -i https://pypi.tuna.tsinghua.edu.cn/simple