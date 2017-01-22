#!/bin/bash

## This is pretty self-explanitory, script is used to create a template for other scripts. ##
## Prompts user for type of script and the name, creates the file and inserts the appropriate ##
## hash-bang for said script type. ##

printf "\n"
printf "Script Template Creator\n"
printf "For bash/lua/python/perl scripts\n"
printf "Usage: \"b\" bash \"l\" lua \"py\" python \"pe\" perl\n"
read c1
case "$c1" in
	"b"|"B") echo "Enter name for bash script:" &&
		 read bsfname &&
		 touch ~/scripts/$bsfname.sh &&
		 echo -e "#!/bin/bash\n\n" > ~/scripts/$bsfname.sh &&
		 echo "Bash script template created in ~/scripts/bash" ;;

	"l"|"L") echo "Enter name for lua script:" &&
		 read lsfname &&
		 touch ~/scripts/lua/$lsfname.lua &&
		 echo -e "#!/usr/bin/env lua\n\n" > ~/scripts/lua/$lsfname.lua &&
		 echo "Lua script template created in ~/scripts/lua" ;;

	"py"|"PY") echo "Enter name for python script:" &&
		   read pysfname &&
		   touch ~/scripts/py/$pysfname.py &&
		   echo -e "#!/usr/bin/env python\n\n" > ~/scripts/py/$pysfname.py &&
		   echo "Python script template created in ~/scripts/python" ;;

	"pe"|"PE") echo "Enter name for perl script:" &&
		   read pesfname &&
		   touch ~/scripts/perl/$pesfname.pl &&
		   echo -e "#!/usr/bin/env perl\n\n" > ~/scripts/perl/$pesfname.pl &&
		   echo "Perl script template created in ~/scripts/perl" ;;

	*)	echo "Invalid choice, exiting..." &&
		exit 1 ;;

esac
exit 0
