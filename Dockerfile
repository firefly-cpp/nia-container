# container is based on: https://github.com/firefly-cpp/alpine-container-data-science

# pull the latest Alpine Linux instance
FROM alpine:3.17

ENV NAME=nia-container VERSION=0 ARCH=x86_64

LABEL org.label-schema="$NAME" \
     name="$FGC/$NAME" \
     version="$VERSION" \
     architecture="$ARCH" \
     run="podman run -it IMAGE" \
     maintainer="Iztok Fister, Jr. <iztok@iztok-jr-fister.eu>" \
     url="https://github.com/firefly-cpp/nia-container" \
     summary="A container hosts all packages from the Nia{*} family of packages." \
     description="A container hosts all packages from the Nia{*} family of packages."

WORKDIR /var/nia/

# INSTALL THE FOLLOWING PYTHON PACKAGES
#   * niapy: Python microframework for building nature-inspired algorithms | https://github.com/NiaOrg/NiaPy
#   * niaaml: Python automated machine learning framework | https://github.com/lukapecnik/NiaAML
#   * niaclass: NiaClass is a framework for solving classification tasks using nature-inspired algorithms | https://github.com/lukapecnik/NiaClass
#   * niaarm: A minimalistic framework for Numerical Association Rule Mining  | https://github.com/firefly-cpp/NiaARM
ENV PACKAGES="\
    py3-niapy \
    py3-niaaml \
    py3-niaclass \
    py3-niaarm \
"

RUN apk update \
    && apk upgrade && apk add --no-cache \
    python3 \
    python3-dev \
    $PACKAGES \
    && rm -rf /var/cache/apk/*

# open the shell
CMD ["/bin/sh"]
