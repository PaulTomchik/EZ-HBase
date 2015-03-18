# http://hbase.apache.org/book.htm

CONF_DIR="/home/cluster/opt/hbase/conf"

sed -i '/<configuration>/ s/$/\
  <property>\
    <name>hbase.cluster.distributed<\/name>\
    <value>true<\/value>\
  <\/property>\
  <property>\
    <name>hbase.rootdir<\/name>\
    <value>hdfs:\/\/master:8020\/hbase<\/value>\
  <\/property>\
  <property>\
    <name>hbase.zookeeper.quorum<\/name>\
    <value>master,slave1,slave2<\/value>\
  <\/property>\
  <property>\
    <name>hbase.zookeeper.property.dataDir<\/name>\
    <value>\/home\/cluster\/data\/zookeeper<\/value>\
  <\/property>/' "${CONF_DIR}/hbase-site.xml"


sed -i '/^# export JAVA_HOME/ s/$/\nexport JAVA_HOME=\/usr\/lib\/jvm\/java-7-openjdk-amd64/'  "${CONF_DIR}/hbase-env.sh"

printf "slave1\n\
slave2\n" > "${CONF_DIR}/regionservers"
