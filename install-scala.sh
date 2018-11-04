#!/bin/bash -x
set -o errexit
set -o pipefail
TOOLS=~/tools/scala

[[ -d "$TOOLS" ]] || mkdir -p "$TOOLS"

cd "$TOOLS"

echo '#!/bin/bash -c "echo source do not run this file;exit -1"
export PATH="$PATH:'"$TOOLS"'"/sbt/bin:'"$TOOLS"'"/eclipse"
'>~/bin/env_scala

exit 0

wget https://piccolo.link/sbt-1.2.6.tgz -O -|tar zxvf -

wget http://downloads.typesafe.com/scalaide-pack/4.7.0-vfinal-oxygen-212-20170929/scala-SDK-4.7.0-vfinal-2.12-linux.gtk.x86_64.tar.gz -O - |tar zxvf -

