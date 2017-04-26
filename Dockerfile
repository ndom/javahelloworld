FROM java:8

ENV FOO bar
WORKDIR /home/root/javahelloworld
RUN mkdir bin
COPY src /home/root/javahelloworld/src
RUN javac -d bin src/HelloWorld.java
RUN touch test
ENTRYPOINT ["java","-cp","bin","HelloWorld"]

