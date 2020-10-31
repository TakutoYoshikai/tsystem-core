#!/bin/bash

cd `dirname $0`
cd ../migration
file=`date "+%Y%m%d-%H%M%S"`-$1.sh
echo "#!/bin/bash" >> $file
echo "" >> $file
vim $file
