From ubuntu:18.04

RUN apt-get update

RUN apt-get install ruby ruby-dev -y
RUN apt-get install wget -y
RUN wget https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz
RUN tar -xvzf arachni-1.5.1-0.5.12-linux-x86_64.tar.gz
ENV PATH="/arachni-1.5.1-0.5.12/bin:${PATH}"


CMD ["arachni_web","--host","0.0.0.0"]
