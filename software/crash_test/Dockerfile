# Define base image (example: alpine:3.7)
FROM alpine:3.7

# Write your build logic here.

RUN apk update && apk add python2

COPY crash_test.py /crash_test.py

# Define entrypoint (uncomment) (optional, if not defined, then sh binary will be used)
# ENTRYPOINT [ "executable" ]

# Define starting arguments/cmd
CMD [ "python", "/crash_test.py", "50" ]