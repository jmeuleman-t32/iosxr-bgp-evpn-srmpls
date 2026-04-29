FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install base tools
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    jq \
    python3 \
    python3-pip \
    iputils-ping \
    net-tools \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

# Install Terraform (official)
RUN wget https://releases.hashicorp.com/terraform/1.8.5/terraform_1.8.5_linux_amd64.zip \
    && unzip terraform_1.8.5_linux_amd64.zip \
    && mv terraform /usr/local/bin/ \
    && rm terraform_1.8.5_linux_amd64.zip

# Install gnmic (VERY useful for IOS XR testing)
RUN wget https://github.com/openconfig/gnmic/releases/download/v0.38.2/gnmic_0.38.2_linux_x86_64.tar.gz \
    && tar -xzf gnmic_0.38.2_linux_x86_64.tar.gz \
    && mv gnmic /usr/local/bin/ \
    && rm gnmic_0.38.2_linux_x86_64.tar.gz

# Install yq
RUN wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 \
    && chmod +x yq_linux_amd64 \
    && mv yq_linux_amd64 /usr/local/bin/yq