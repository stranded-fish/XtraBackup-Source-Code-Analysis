########################################################################
# Bug #543134: Missing support for LRU dump/restore
########################################################################

. inc/common.sh

if ! is_xtradb || is_server_version_higher_than 5.6.0
then
    skip_test "Requires Percona Server <= 5.5"
fi

start_server

# produce ib_lru_dump
${MYSQL} ${MYSQL_ARGS} -e "select * from information_schema.XTRADB_ADMIN_COMMAND /*!XTRA_LRU_DUMP*/;"

# take a backup with stream mode
mkdir -p $topdir/backup
innobackupex --stream=tar $topdir/backup > $topdir/backup/stream.tar

if $TAR itf $topdir/backup/stream.tar | grep ib_lru_dump ; then
    vlog "LRU dump has been backed up"
else
    vlog "LRU dump has not been backed up"
    exit -1
fi
