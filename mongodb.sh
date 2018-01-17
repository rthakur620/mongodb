# Description:       Start/stop mongod

do_start()
{
   echo "Mongodb starting!";
   cd /opt/mongodb/mongodb-3.4.7/bin;
   mongod --dbpath /var/opt/data/flat/mondodb/data --port 27017 --replSet  seenrs &;
}

do_status()
{
   echo "MongoDB status!";
   ps -aef | grep mongod;
}

do_stop()
{
   echo "Mongodb stopping!"
   cd /opt/mongodb/mongodb-3.4.7/bin;
   mongod --shutdown;
}


case "$1" in
   start)
     do_start
     ;;
   stop)
     do_stop
     ;;
   status)
     do_status
     ;;
esac

exit 0