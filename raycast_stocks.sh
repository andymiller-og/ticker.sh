#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Ticker
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 📈
# @raycast.packageName Finance
# @raycast.argument1 { "type": "dropdown", "placeholder": "Select preset", "data": [{"title": "Custom Input", "value": "custom"},{"title": "Main Watchlist", "value": "TSLA AUR SNOW META SQ GOOGL AAPL AMZN UBER NKLA TDOC ARKK PTON"},{"title": "EV & Clean Tech", "value": "TSLA LCID RIVN ARKK GM VFS F ARVLF HYLN DRIV QS PSNY AQMS NIO EVGO WKHS BYDDF CHPT XPEV AUR NRDE NKLA GOEV"},{"title": "Market Indexes", "value": "SPY DIA QQQ IWM VTI ^GSPC ^DJI ^IXIC ^RUT ^VIX"},{"title": "Pittsburgh", "value": "ANSS CNX WCC PNC CCI KMT EQT ATI FHI X MSA HWM DKS AEO PPG DUOL DD"}]}
# @raycast.argument2 { "type": "text", "placeholder": "Custom symbols", "optional": true }

# Documentation:
# @raycast.description Get the price for stocks!
# @raycast.author millz-og
# @raycast.authorURL https://raycast.com/millz-og

cd ~/projects/ticker.sh
./ticker.sh $1 | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"
