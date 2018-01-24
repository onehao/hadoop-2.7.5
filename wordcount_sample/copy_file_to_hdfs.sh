../bin/hadoop fs -mkdir wordcount
../bin/hadoop fs -mkdir wordcount/input
../bin/hadoop fs -mkdir wordcount/output
../bin/hadoop fs -copyFromLocal file01 wordcount/input
../bin/hadoop fs -copyFromLocal file02 wordcount/input
../bin/hadoop fs -copyFromLocal wordcount.jar wordcount/input
