FROM fedora:latest

RUN dnf update -y \
    && dnf install -y clang clang-tools-extra cmake curl findutils gcc g++ gdb git make python3 python3-pip rsync unzip vim wget zip \
    && dnf clean all \
    && /usr/bin/python3 -m pip install -U pylint-starlark
RUN wget -O /tmp/bazel-installer.sh https://github.com/bazelbuild/bazel/releases/download/4.1.0/bazel-4.1.0-installer-linux-x86_64.sh \
    && chmod +x /tmp/bazel-installer.sh \
    && /tmp/bazel-installer.sh \
    && rm /tmp/bazel-installer.sh \
    && wget -O /usr/local/bin/buildifier https://github.com/bazelbuild/buildtools/releases/download/4.0.1/buildifier-linux-amd64 \
    && chmod 755 /usr/local/bin/buildifier
