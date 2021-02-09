FROM fedora:33

RUN dnf update -y \
    && dnf install -y clang cmake curl findutils gcc g++ gdb git make rsync unzip vim wget zip \
    && dnf clean all
RUN wget -O /tmp/bazel-installer.sh https://github.com/bazelbuild/bazel/releases/download/3.7.1/bazel-3.7.1-installer-linux-x86_64.sh \
    && chmod +x /tmp/bazel-installer.sh \
    && /tmp/bazel-installer.sh \
    && rm /tmp/bazel-installer.sh
