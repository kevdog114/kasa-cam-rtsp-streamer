# Kasa Cam KC400 RTSP Stream Generator

This docker publishes a video stream from a KC400 Kasa Cam to an RTSP
stream of your choice. You just need to know the IP address, your account
credentials, and RTSP server.

Sample Usage:
```
  docker run --rm -it \
    -e APP_CAM_URL='see_below' \
    -e APP_RTSP_URL='rtsp://1.2.3.4:8554/yourcamera' \
    klschaefer/kasa-cam-rtsp-streamer:latest
```

## Determining your APP CAM URL
The URL should follow this format:
```
  https://user:pass@ip:19443/https/stream/mixed?video=h264&audio=g711
```

Your username should be your Kasa username, which is probably an email address.
You do need to URL encode any special characters.

Your password will also need to be URL encoded.

So a sample URL might look like this:
```
  https://nobody%40gmail.com:my_super_secret_pass@192.168.1.99:19443/https/stream/mixed?video=h264&audio=g711
```

## RTSP Stream URL
You can publish this to any RTSP server, but I would recommend the
[aler9/rtsp-simple-server](https://github.com/aler9/rtsp-simple-server)

## Source
This is basically a dockerized version of the research done as part of this
article:
https://medium.com/@hu3vjeen/reverse-engineering-tp-link-kc100-bac4641bf1cd

Special thanks to that author.
