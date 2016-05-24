uci set system.@system[0].hostname='newname'
uci commit system
/etc/init.d/system reload