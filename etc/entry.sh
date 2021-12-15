#!/bin/bash
bash "${STEAMCMDDIR}/steamcmd.sh" +force_install_dir "${STEAMAPPDIR}" \
				+login anonymous \
				+app_update "${STEAMAPPID}" \
				-beta "${STEAMAPPBETA}" \
				+quit

bash "${STEAMAPPDIR}/start-server.sh \
	-servername ${SERVERNAME} \
	-serverpassword ${SERVERPASSWORD}  \
	-adminpassword ${ADMINPASSWORD}
