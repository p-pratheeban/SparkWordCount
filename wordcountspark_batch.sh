#!/bin/bash

hadoop fs -rm -r /user/cloudera/spark/input

hadoop fs -mkdir -p /user/cloudera/spark/input

hadoop fs -put inputspark.txt /user/cloudera/spark/input

spark-submit --class edu.mum.cs522.WordCount --master local[1] SparkWordCount-1.0-SNAPSHOT.jar /user/cloudera/spark/input/inputspark.txt /user/cloudera/spark/output 
