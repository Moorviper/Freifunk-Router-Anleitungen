uci get gluon-node-info.@owner[0] || uci add gluon-node-info owner
uci set gluon-node-info.@owner[0].contact=example@example.com
uci commit gluon-node-info