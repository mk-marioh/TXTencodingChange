#!/bin/sh

###############################################################################
#
#	Copyright (c) 2013 Marios Makris <marios.makris@gmail.com>
#
#	This program is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	(at your option) any later version.
#
#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
#	You should have received a copy of the GNU General Public License
#	along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
###############################################################################


if [ $# -lt 1 ] || [ $# -gt 1 ]
then
	echo "Wrong number of arguments supplied " $#
	exit;
fi

for f in $(find $1 *.txt -type f)
do
	echo "Changing character encoding at file: " $f
	recode iso88597...utf8 $f
done
