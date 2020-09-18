# 2020_09_19_spark-datasource

### 1. 하둡실행
우분투 홈에서 다음과 같은 명령어로 하둡 namenode, datanode, yarn, secondary name node 를 할성화 해줍니다.
```
hadoop/sbin/start-all.sh
```

### 2. 하이브 메타 스토어 실행
```
$HOME/hive/bin/hive --service metastore &
```

### error
* 인스턴스가 비정상 종료되거나 각종 이유로 인해 namenode 실행이 불가능할 때가 있습니다.
```
$HADOOP_HOME/bin/hdfs namenode -format
```
* 하이브가 실행안될때, 메타스토어 초기화
```
cd $HOME/hive
./bin/schematool -initSchema -dbType derby
cp $HOME/hive/conf/hive-site.xml $HOME/spark/conf/
./bin/hive --service metastore &
```

### 3. 데이터 다운로드
```
bash download.sh
```