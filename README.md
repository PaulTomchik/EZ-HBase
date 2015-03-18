#Set up a Virtual Cluster With Apache HBase.

The end result of these instructions will be an 3-node virtual cluster with HBase.
###Note: These instructions, and associated scripts, are a work in progress.
###There is no claim that this is the best way to set up HBase.

##Instructions
1. Create an *HadoopCluster* per the instructions in [EZ-Hadoop](https://github.com/PaulTomchik/EZ-Hadoop)

2. Start HadoopMaster, log in, and run:
  1. `git clone https://github.com/PaulTomchik/EZ-HBase.git`
  2. `cd EZ-HBase`
  3. `./DoIt.sh`
3. If you have not yet formatted the hdfs namenode, do so now.
4. Run `start-dfs.sh; start-yarn.sh; start-hbase.sh;`

### At this point, HBase should be running atop Hadoop!

# Have fun!
