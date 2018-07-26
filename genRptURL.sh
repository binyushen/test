pwd|awk -F/ '{printf("http://192.168.2.10:8081/%s/ResultReport\n", $NF)}'
