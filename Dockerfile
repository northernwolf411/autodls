FROM alpine:latest
RUN apk update
RUN apk upgrade
RUN apk add nano wget curl python3 bash ffmpeg busybox-openrc
RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp
CMD tail -f /dev/null
