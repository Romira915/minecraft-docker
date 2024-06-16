FROM fluent/fluent-bit:3.0.7-debug

# https://github.com/newrelic/newrelic-fluent-bit-output/releases/download/v1.19.1/out_newrelic-linux-amd64-1.19.1.so
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y wget && \
    if [ "$(uname -m)" = "aarch64" ]; then \
    wget https://github.com/newrelic/newrelic-fluent-bit-output/releases/download/v2.0.0/out_newrelic-linux-arm64-2.0.0.so -O /fluent-bit/bin/out_newrelic.so; \
    elif [ "$(uname -m)" = "x86_64" ]; then \
    wget https://github.com/newrelic/newrelic-fluent-bit-output/releases/download/v2.0.0/out_newrelic-linux-amd64-2.0.0.so -O /fluent-bit/bin/out_newrelic.so; \
    fi
