curl -L -o /tmp/FILENAME DOWNLOADLINK
echo @sentineltoken@ > /tmp/com.sentinelone.registration-token
/usr/sbin/installer -pkg /tmp/FILENAME -target /
fi
