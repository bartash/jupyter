# download sf city data
# -rw-r--r-- 1 Andrew Andrew  123946141 Feb 23 10:21 Addresses-with-Units-Enterprise-Addressing-System.json
# -rw-r--r-- 1 Andrew Andrew 1378291840 Feb 23 11:38 Assessor-Historical-Secured-Property-Tax-Rolls.json
ROLLS=Assessor-Historical-Secured-Property-Tax-Rolls.json
if [ ! -e $ROLLS ]; then
    curl -o $ROLLS 'https://data.sfgov.org/api/views/wv5m-vpq2/rows.json?accessType=DOWNLOAD'
else
	echo $ROLLS exists already
fi

ADDR=Addresses-with-Units-Enterprise-Addressing-System.json
if [ ! -e $ADDR ]; then
    curl -o  'https://data.sfgov.org/api/geospatial/ramy-di5m?method=export&format=GeoJSON'
else
	echo $ADDR exists already
fi

