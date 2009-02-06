#!/bin/sh
export CABIO_DIR=/cabio/cabiodb/cabio42
export CABIO_DATA_DIR=/cabio/cabiodb/cabio_data
export PERL5LIB=$PERL5LIB:"$CABIO_DIR"/scripts/parse
export SQLLDR=/app/oracle/product/10gClient/bin/sqlldr
export SQLPLUS=/app/oracle/product/10gClient/bin/sqlplus
export PATH="$PATH":"$CABIO_DIR"/bin
export GRIDID_PATH=/cabio/cabiodb/cabio42/gridid
export CONNECT_STRING=jdbc:oracle:thin:@cbdb-d1001.nci.nih.gov:1553:BIODEV
export DBI_DRIVER='DBI:Oracle:BIODEV'
export SCHEMA='cabiodev'
export SCHEMA_PWD='cabiodev506'
export SCHEMA_DB='BIODEV'
export dt=`date '+%m_%d_%y'`
export LOG=/cabio/cabiodb/cabio42/log
export LOAD=/cabio/cabiodb/cabio42/scripts/sql_loader
export download_LOG=DOWNLOAD.$dt.log
export download_BAD=DOWNLOAD.$dt.bad
export parse_LOG=PARSE.$dt.log
export parse_BAD=PARSE.$dt.bad
export stat_LOG=STATS.$dt.log
export stat_BAD=STATS.$dt.bad
export sqlldr_LOG=SQLLDR.$dt.log
export sqlldr_BAD=SQLLDR.$dt.bad
export grididload_LOG=GRIDIDLOAD.$dt.log
export grididload_BAD=GRIDIDLOAD.$dt.bad
chmod +x "$CABIO_DIR"/bin/mkpath.pl