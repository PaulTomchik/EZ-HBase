HBASE_VERSION="hbase-1.0.0"
HBASE_BIN="${HBASE_VERSION}-bin"
HBASE_TAR="${HBASE_BIN}.tar.gz"

cd /home/cluster/opt

wget "http://mirrors.advancedhosters.com/apache/hbase/${HBASE_VERSION}/${HBASE_TAR}"

tar zxvf "${HBASE_TAR}"

ln -s /home/cluster/opt/${HBASE_VERSION}/ hbase

rm -f "${HBASE_TAR}"

printf "\n\nexport HBASE_HOME='/home/cluster/opt/hbase/'\n" >> /home/cluster/.bashrc
printf '\nexport PATH="${PATH}:/home/cluster/opt/hbase/bin/"\n' >> /home/cluster/.bashrc
