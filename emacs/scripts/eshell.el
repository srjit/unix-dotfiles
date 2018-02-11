
;; for spark variables
(setenv "JAVA_HOME" "/usr/lib/jvm/java-7-openjdk-amd64")
(setenv "SCALA_HOME" "/home/sree/scala-2.11.8")
(setenv "SBT_HOME" "/home/sree/sbt")
(setenv "SPARK_HOME" "/home/sree/spark-2.0.0-bin-hadoop2.7")
(setenv "HADOOP_HOME" "/usr/lib/hadoop")
(setenv "PYTHONPATH" "/home/sree/spark-2.0.0-bin-hadoop2.7/python:/home/sree/spark-2.0.0-bin-hadoop2.7/python/lib/py4j-0.10.1-src.zip:/home/sree/spark-2.0.0-bin-hadoop2.7/python/pyspark:/home/sree/spark-2.0.0-bin-hadoop2.7/python:/home/sree/spark-2.0.0-bin-hadoop2.7/python/lib:/home/sree/Automated-Essay-Grader-master/FeatureExtraction")

(setenv "PATH" (concat (getenv "PATH") ":$JAVA_HOME/bin" ":$SCALA_HOME/bin" ":$SBT_HOME/bin"))

