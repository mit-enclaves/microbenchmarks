for filename in ./test*S  ; do export filename=`echo $filename | cut -d'.' -f2 | cut -d'/' -f2` ; sudo fpga-load-local-image -S 0 -I agfi-063b78ce510ee862a > /dev/null ; echo $filename ; $RISCY_HOME/procs/build/RV64G_OOO.core_2.core_SMALL.cache_LARGE.tso.l1_cache_lru.secure_flush.check_deadlock.llc_lru.fix/awsf1/bin/ubuntu.exe --core-num 2 --rom $RISCY_HOME/procs/rom/out/rom_core_2 --elf build/$filename.elf --mem-size 2048 --ignore-user-stucks 1000000 | grep -E "[TEST]" ; done
