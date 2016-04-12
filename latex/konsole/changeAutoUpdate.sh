uci set autoupdater.settings.enabled=1
uci set autoupdater.settings.branch=stable
uci commit autoupdater
autoupdater -f