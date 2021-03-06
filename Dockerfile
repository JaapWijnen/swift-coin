# ================================
# Build image
# ================================
FROM swift:5.3 AS build
LABEL stage=intermediate

RUN apt-get update && apt-get install -y libsqlite3-dev

WORKDIR /build
COPY Package.resolved .
COPY Package.swift .

RUN swift package resolve

COPY Sources ./Sources
COPY Tests ./Tests

RUN swift build --enable-test-discovery -c release -Xswiftc -g
