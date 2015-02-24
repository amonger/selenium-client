FROM python

RUN pip install selenium
RUN pip install pyvirtualdisplay
RUN pip install xvfbwrapper
RUN echo "deb http://packages.linuxmint.com debian import" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install xvfb -y
RUN apt-get install firefox -y --force-yes

cmd xvfb-run python /test.py
