################################################################################################
##  Copyright (c) GENERIC_VENDOR_CASE_TITLE_FULL
##  All rights reserved.
##
##  This document, and all data and information contained therein, is
##  confidential and proprietary information of GENERIC_VENDOR_CASE_TITLE_FULL In acceptance of
##  this material, recipient agrees all data and disclosures will be held in
##  confidence and will not be copied, reproduced, or transmitted in whole or
##  in part, nor its contents revealed in any manner to others without the
##  express written permission of GENERIC_VENDOR_CASE_TITLE_FULL
##
##  This technology was exported from the United States in accordance with
##  the Export Administration Regulations.
################################################################################################

#!/bin/sh

mkdir -p ../bitfiles
mkdir -p ../netlists

full(  )
{
	echo "full"
	rm -f impl.log
	vivado  -mode batch -source impl.tcl -appLog -tclargs "1" > impl.log 2>&1
	if [ $? -ne 0 ] ;then
		exit 1;
	fi
	echo "Implementation finished"
	rm -f vivado.jou
}

full_vhd( )
{
	echo "full_vhd"
	rm -f impl.log
	vivado  -mode batch -source impl.tcl -appLog  -tclargs "0" > impl.log 2>&1
	if [ $? -ne 0 ] ;then
		exit 1;
	fi
	echo "Implementation finished"
	rm -f vivado.jou
}


cd "`dirname "$0"`"
CWD="$(pwd)"



if [ -z "$1" ] ;then
	full
	exit 0;
fi

case "$1" in
	verilog) full	;;
	vhdl) full_vhd  ;;
	*)
		echo "Error: Bad argument: $1"
		exit 1;
esac
exit 0;


