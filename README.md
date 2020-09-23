# 2020_09_19_spark-datasource

## 과제1 : apache arrow 간단하게 정리
## 과제2 : assignments.ipynb 를 참고하여 nations.csv를 parquet 파일로 변환 후 저장되어 있는 모습 캡처

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
### 3. git clone 
인스턴스가 정상적으로 작동하면 
```
 git clone (git repo 주소)
```
를 통해 과제에 필요한 파일을 가져옵니다.

### 4-1. 데이터 다운로드
```
bash downlaod.sh
```
data 폴더 안에 exhibitions.csv 와 nations.csv가 다운받아집니다.
### 4-2. pyarrow 다운로드
```
pip install pyarrow
```
를 통해 과제에서 사용하게 될 apache arrow를 다운 받아줍니다

### 5. 과제는 ipynb 파일을 참고해주세요~ 파이팅!
