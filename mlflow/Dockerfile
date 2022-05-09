FROM python:3.9-slim-buster
# Install python packages
RUN pip install mlflow[extras] boto3 pymysql
RUN pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113
RUN pip install transformers tokenizers
