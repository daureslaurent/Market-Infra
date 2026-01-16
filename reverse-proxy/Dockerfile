FROM nginx:alpine

# Copy main nginx config and vhost
COPY nginx.conf /etc/nginx/nginx.conf
COPY reverse-proxy.conf /etc/nginx/conf.d/reverse-proxy.conf

# Optional: run as non-root (uncomment if your environment is ready for it)
# USER nginx

# Expose HTTP
EXPOSE 80

# Health check (container-level, simple)
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
  CMD wget -qO- http://127.0.0.1/health || exit 1
