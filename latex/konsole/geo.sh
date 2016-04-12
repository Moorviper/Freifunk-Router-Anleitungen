uci set gluon-node-info.@location[0]='location'
uci set gluon-node-info.@location[0].share_location='1'
uci set gluon-node-info.@location[0].latitude='51.484943'  <-- anpassen
uci set gluon-node-info.@location[0].longitude='6.880250'  <-- anpassen 
uci set gluon-node-info.@location[0].altitude='11.51'      <-- anpassen (optional)
uci commit gluon-node-info