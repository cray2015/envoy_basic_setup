# Use for debugging
# FROM envoyproxy/envoy-debug:v1.20-latest

FROM envoyproxy/envoy-alpine:v1.20-latest


COPY ./envoy.yaml /etc/envoy.yaml
COPY ./configs /var/lib/envoy
RUN chmod go+x /var/lib/envoy && chmod go+r /etc/envoy.yaml /var/lib/envoy/*

# Copy your SSL certificates
CMD ["/usr/local/bin/envoy", "-c /etc/envoy.yaml"]

# Use for debugging
# CMD ["/usr/local/bin/envoy", "-c /etc/envoy.yaml", "-l", "debug"]
