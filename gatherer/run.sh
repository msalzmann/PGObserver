#!/bin/bash

DATE=$(date +%F_%H%M)
JAR=$(ls target/pgobserver-gatherer-*-jar-with-dependencies.jar | tail -1)

nohup java -jar ${JAR} &> pgmon_java_${DATE}.log &
