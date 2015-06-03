oracle:
	docker build -t zmre/java-ubuntu:oraclejdk-7 oraclejdk

open:
	docker build -t zmre/java-ubuntu:openjdk-jre-7 openjdk-jre

all: oracle open
