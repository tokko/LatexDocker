FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y texlive

#RUN mkdir /home/output
#VOLUME . /home/output

COPY test.tex /home/text.tex
COPY compile.sh /home/compile.sh


CMD /home/compile.sh
