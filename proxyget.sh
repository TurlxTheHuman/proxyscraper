#!/bin/bash
echo "Press [CTRL+C] to stop.."
while :
do
	curl "https://sunny9577.github.io/proxy-scraper/proxies.txt" >> proxies.txt
	curl "https://www.proxy-list.download/api/v1/get?type=http" >> proxies.txt
	curl "https://www.proxy-list.download/api/v1/get?type=https" >> proxies.txt
	##curl "https://www.freeproxychecker.com/result/http_proxies.txt" | tail +8 >> proxies.txt
	curl "https://api.proxyscrape.com/v2/?request=getproxies&protocol=http" >> proxies.txt
    	curl "https://raw.githubusercontent.com/chipsed/proxies/main/proxies.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/clarketm/proxy-list/master/proxy-list-raw.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/hendrikbgr/Free-Proxy-Repo/master/proxy_list.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/KUTlime/ProxyList/main/ProxyList.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/mmpx12/proxy-list/master/http.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/mmpx12/proxy-list/master/https.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/proxiesmaster/Free-Proxy-List/main/proxies.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/roosterkid/openproxylist/main/HTTPS_RAW.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/ShiftyTR/Proxy-List/master/http.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/ShiftyTR/Proxy-List/master/https.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/sunny9577/proxy-scraper/master/proxies.txt" >> proxies.txt
   	curl "https://raw.githubusercontent.com/TheSpeedX/PROXY-List/master/http.txt" >> proxies.txt
    	curl "https://raw.githubusercontent.com/Volodichev/proxy-list/main/http.txt" >> proxies.txt
	curl "https://raw.githubusercontent.com/TheSpeedX/SOCKS-List/master/http.txt" | tail +3 >> proxies.txt
	curl "https://api.proxyscrape.com/?request=displayproxies&proxytype=http&timeout=all&country=all&anonymity=all&ssl=all" >> proxies.txt
	cat proxies.txt | uniq -u >> scraped.txt
	rm -rf proxies.txt
	sort scraped.txt | uniq -u >> allscraped.txt
	rm -rf scraped.txt
	replace "http://" "" -- allscraped.txt
	echo ""
	##echo "Done Scraping! Starting Proxy Finder! This Will Take A While!"
	##proxybroker find --types HTTP HTTPS >> proxies.txt
	echo "DONE! Going To Sleep For 1 Hour"
	sleep 3600
done
