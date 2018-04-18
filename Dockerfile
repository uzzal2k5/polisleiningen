FROM java:8
MAINTAINER uzzal2k5@gmail.com

ENV LEIN_ROOT true
#RUN curl https://raw.githubusercontent.com/technomancy/leiningen/b630fa37b8b408c16ca86fdc5784e09dc889a612/bin/lein \
RUN curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein \
-o /usr/local/bin/lein \
&& chmod a+x /usr/local/bin/lein
RUN echo '(exit)' | lein repl

CMD ["lein"]