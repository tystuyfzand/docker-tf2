FROM hackebein/srcds

ENV \
	# App
	APPS="440" \
	#
	# API
	# http://steamcommunity.com/dev/apikey
	AUTHKEY="" \
	#
	# Public access
	# automatic via API
	GLSTAPP="440" \
	# manual
	# APPID: 4000
	# http://steamcommunity.com/dev/managegameservers
	GLST="" \
	#
	# Workshop server download (require API)
	WORKSHOP="\${WORKSHOPCOLLECTIONID:-}" \
	#
	# Workshop client download (require API)
	WORKSHOPDL="" \
	#
	# Server config
	GAME="tf" \
	TICKRATE="66" \
	MAXPLAYERS="24" \
	MAP="cp_dustbowl" \
	CONFIG="server.cfg" \
	#
	# Start parameters
	SRCDSPARAMS="\
		-game \${GAME} \
		-tickrate \${TICKRATE} \
		-maxplayers \${MAXPLAYERS} \
		-authkey \${AUTHKEY} \
		+host_workshop_collection \${WORKSHOP} \
		+map \${MAP} \
		+servercfgfile \${CONFIG} \
		\${CUSTOMPARAMETERS} \
	"