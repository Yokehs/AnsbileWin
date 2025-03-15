FROM alpine/ansible:latest AS ansbile
#LABEL authors="Yokeh"
#FROM 8069edb3cfbfd110094867654aa4f1851a38ca78ecd579e490d5ff3b30213eb1


RUN apk add --no-cache openssl \
    python3 \
    py3-pip \
    py3-cryptography \
    py3-bcrypt \
    py3-passlib \
    sshpass \
    git
#RUN pip install --no-cache passlib docker
#RUN pip3 install --no-cache passlib docker

WORKDIR /root
CMD ["/bin/bash"]