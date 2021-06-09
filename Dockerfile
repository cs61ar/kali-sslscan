# Official Kali Linux Rolling with useful tools
FROM kalilinux/kali-rolling

ARG DEBIAN_FRONTEND=noninteractive
# Update
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y autoremove && apt-get clean

# Install a few useful tools
RUN apt-get -y install vim net-tools nmap curl sslscan

ENTRYPOINT ["/bin/bash"]
