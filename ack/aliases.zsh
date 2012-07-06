alias extensions="find . -type f | awk -F'.' '{print $NF}' | sort| uniq -c | sort -g"
