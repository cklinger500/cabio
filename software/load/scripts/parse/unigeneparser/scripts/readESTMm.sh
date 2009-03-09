#!/bin/sh 
mkpath.pl $CABIO_DATA_DIR/temp/relative_clone 
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr1_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr1_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr2_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr2_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr3_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr3_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr4_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr4_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr5_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr5_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr6_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr6_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr7_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr7_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr8_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr8_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr9_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr9_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr10_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr10_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr11_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr11_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr12_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr12_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr13_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr13_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr14_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr14_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr15_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr15_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr16_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr16_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr17_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr17_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr18_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr18_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chrX_est.txt $CABIO_DATA_DIR/temp/relative_clone/chrX_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chrY_est.txt $CABIO_DATA_DIR/temp/relative_clone/chrY_est_mouse_stage.dat $1 $2 $3 &
java -classpath ".:../build:../lib/ojdbc14.jar:../lib/commons-net-1.4.0.jar" gov.nih.nci.caBIO.dataload.ParseAllmrna $CABIO_DATA_DIR/relative_clone/mouse/chr19_est.txt $CABIO_DATA_DIR/temp/relative_clone/chr19_est_mouse_stage.dat $1 $2 $3 &
wait