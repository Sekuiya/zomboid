############################################################
# Dockerfile that builds a Project Zomboid Gameserver
############################################################
FROM cm2network/steamcmd:root

ENV STEAMAPPID 380870
ENV STEAMAPPBETA b41multiplayer
ENV STEAMAPP zomboid
ENV STEAMAPPDIR "${HOMEDIR}/${STEAMAPP}-dedicated"
ENV DLURL https://raw.githubusercontent.com/Sekuiya/Zomboid

RUN set -x \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		wget=1.20.1-1.1 \
	&& wget "${DLURL}/master/etc/entry.sh" -O "${HOMEDIR}/entry.sh" \
	&& mkdir -p "${STEAMAPPDIR}" \
	&& chmod 755 "${HOMEDIR}/entry.sh" "${STEAMAPPDIR}" \
	&& chown "${USER}:${USER}" "${HOMEDIR}/entry.sh" "${STEAMAPPDIR}" \
	&& rm -rf /var/lib/apt/lists/*

ENV PLAYERPORTS 16262-16272 \
	SERVERPORT 16261 \
	SERVERNAME servertest \
	SERVERPASSWORD test \
	ADMINPASSWORD tadmin

USER ${USER}

WORKDIR ${HOMEDIR}

CMD ["bash", "entry.sh"]

# Expose ports
EXPOSE 8766
EXPOSE 8767
EXPOSE 16261/udp
EXPOSE 16262-16272
