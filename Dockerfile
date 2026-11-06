FROM ghcr.io/xtls/xray-core:latest AS xray-src
FROM alpine:latest
COPY --from=xray-src /usr/local/bin/xray /usr/local/bin/xray
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
