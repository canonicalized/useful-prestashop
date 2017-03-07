#!/bin/bash
URL='yoursite.com'

wget --quiet http://$URL/1_en_0_sitemap.xml --no-cache --output-document - | egrep -o "http(s?):\/\/$URL[^] \"\(\)\<\>]*" | while read line; do
    time curl -A 'Cache Warmer' -s -L $line > /dev/null 2>&1
    echo $line
done

