# Redis 4 with ReJSON module
#
# Multi-staged build

# BUILDER STAGE
FROM buildpack-deps:jessie as builder

RUN mkdir -p /src && \
    cd /src && \
    git clone https://github.com/RedisLabsModules/rejson.git && \
    cd /src/rejson && \
    make

# FINAL STAGE
FROM vertigo/redis4
COPY --from=builder /src/rejson/src/rejson.so /opt/redis_modules/rejson.so
RUN sed "s/\"\$0\"/\"\$0\" --loadmodule \/opt\/redis_modules\/rejson\.so/" -i /usr/local/bin/docker-entrypoint.sh
