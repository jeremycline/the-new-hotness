FROM fedora
FROM fedora:25
RUN dnf install -y \
        fedmsg \
        fedmsg-hub \
        python-pip \
        git \
        koji \
        python-bugzilla \
        python-dogpile-cache \
        python-fedmsg-meta-fedora-infrastructure && \
    dnf autoremove -y && \
    dnf clean all -y
RUN pip install git+https://github.com/jeremycline/the-new-hotness.git

ENTRYPOINT /usr/bin/fedmsg-hub
