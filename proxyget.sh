#!/bin/bash
echo "Press [CTRL+C] to stop.."
while :
do
	curl "https://sunny9577.github.io/proxy-scraper/proxies.txt" >> proxies.txt
	curl "https://www.proxy-list.download/api/v1/get?type=http" >> proxies.txt
	curl "https://www.proxy-list.download/api/v1/get?type=https" >> proxies.txt
	curl "https://api.proxyscrape.com/?request=displayproxies&proxytype=http&timeout=all&country=all&anonymity=all&ssl=all" >> proxies.txt
	curl "https://www.freeproxychecker.com/result/http_proxies.txt" | tail +8 >> proxies.txt
	curl "https://raw.githubusercontent.com/TheSpeedX/SOCKS-List/master/http.txt" | tail +3 >> proxies.txt
	sort -R proxies.txt >> httprandom.txt
	cat httprandom.txt | uniq -u > `date`.txt
	rm -rf httprandom.txt; rm -rf proxies.txt
	echo ""
	echo "Done Scraping! Starting Proxy Finder! This Will Take A While!"
	##proxybroker find --types HTTP HTTPS >> proxies.txt
	echo "DONE! Going To Sleep For 1 Hour"
	sleep 3600
done
