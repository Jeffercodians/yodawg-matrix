SERVICE_FRONTEND="db"
SERVICE_PORT_HTTP="$(service::get_port web)"
SERVICE_PORT_MATRIX="$(service::get_port matrix)"

yo postgres add_db synapse \
	--encoding=UTF8 --locale=C --template=template0

SERVICE_PASSWORD_DB="$(yo postgres get_db_password synapse)"

SERVICE_ZONE="codians.club"

MATRIX_SERVER_NAME="chat.${SERVICE_ZONE}"
