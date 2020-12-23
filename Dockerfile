ARG     BASE_IMAGE=alpine:latest

FROM    $BASE_IMAGE

RUN     apk --update --no-cache add \
        qemu-system-x86_64 \
        qemu-img

ENTRYPOINT      [ "qemu-system-x86_64" ]
