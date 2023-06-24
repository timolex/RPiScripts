#!/bin/bash
function hh {
  echo "   free -h ...:"
  free -h
  echo "   vcgencmd ...:"
  vcgencmd get_mem arm && vcgencmd get_mem gpu
  echo "   CPU temp ...:"
  cpu=$(</sys/class/thermal/thermal_zone0/temp)
  echo -e "$((cpu/1000)) \xE2\x84\x83"
}
