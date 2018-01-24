用法
假设环境变量HADOOP_HOME对应安装时的根目录，HADOOP_VERSION对应Hadoop的当前安装版本，编译WordCount.java来创建jar包，可如下操作：

$ mkdir wordcount_classes 
$ javac -classpath ${HADOOP_HOME}/hadoop-${HADOOP_VERSION}-core.jar -d wordcount_classes WordCount.java 
$ jar -cvf /usr/joe/wordcount.jar -C wordcount_classes/ .

假设：

/usr/joe/wordcount/input - 是HDFS中的输入路径
/usr/joe/wordcount/output - 是HDFS中的输出路径
用示例文本文件做为输入：

$ bin/hadoop dfs -ls /usr/joe/wordcount/input/ 
/usr/joe/wordcount/input/file01 
/usr/joe/wordcount/input/file02 

$ bin/hadoop dfs -cat /usr/joe/wordcount/input/file01 
Hello World Bye World 

$ bin/hadoop dfs -cat /usr/joe/wordcount/input/file02 
Hello Hadoop Goodbye Hadoop

运行应用程序：

$ bin/hadoop jar /usr/joe/wordcount.jar org.myorg.WordCount /usr/joe/wordcount/input /usr/joe/wordcount/output



