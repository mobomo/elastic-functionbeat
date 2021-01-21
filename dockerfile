FROM alpine:3.13.0

ARG FUNCTIONBEAT_VERSION

ADD https://artifacts.elastic.co/downloads/beats/functionbeat/functionbeat-${FUNCTIONBEAT_VERSION}-linux-x86_64.tar.gz /tmp

RUN apk add --update-cache curl bash libc6-compat \
	&& tar xzvf /tmp/functionbeat-${FUNCTIONBEAT_VERSION}-linux-x86_64.tar.gz \
	&& mv functionbeat-${FUNCTIONBEAT_VERSION}-linux-x86_64/functionbeat /bin/functionbeat && \
    chmod a+x /bin/functionbeat

ENV PATH /bin/functionbeat:$PATH

ENTRYPOINT ["functionbeat"]