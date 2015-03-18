HBASE_VERSION="hbase-1.0.0"
HBASE_TAR="${HBASE_VERSION}.tar.gz"

SLAVE_CMD="\
cd /home/cluster/opt;\
tar zxvf ${HBASE_TAR};\
rm -f ${HBASE_TAR};\
ln -s /home/cluster/opt/${HBASE_VERSION} hbase;\
printf \"\n\nexport HBASE_HOME='/home/cluster/opt/hbase/'\n\" >> /home/cluster/.bashrc;\
printf '\nexport PATH=\"${PATH}:/home/cluster/opt/hbase/bin/\"\n' >> /home/cluster/.bashrc;"

cd /home/cluster/opt
tar zcvf "${HBASE_TAR}" "${HBASE_VERSION}"

for slave in slave1 slave2
do
  scp "${HBASE_TAR}" $slave:/home/cluster/opt
  ssh $slave "${SLAVE_CMD}"
done

rm -f "${HBASE_TAR}"

