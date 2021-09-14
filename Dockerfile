FROM ubuntu:20.04

RUN apt-get update -y && apt-get install -y \
    lib32z1 xinetd

RUN useradd -m ctf

WORKDIR /home/ctf

COPY ./ctf.xinetd /etc/xinetd.d/ctf
COPY ./start.sh /start.sh
RUN echo "Blocked by ctf_xinetd" > /etc/banner_fail

RUN chmod +x /start.sh

COPY ./challenge/ /home/ctf/
RUN chown -R root:ctf /home/ctf && \
    chmod -R 750 /home/ctf && \
	# setup the challenge to execute as root
    chown root /home/ctf/challenge && \
    chmod u+s /home/ctf/challenge && \
	# make sure the flag is only readable by root
	chown root /home/ctf/flag.txt &&\ 
    chmod 700 /home/ctf/flag.txt

CMD ["/start.sh"]

EXPOSE 31337
