FROM ubuntu
MAINTAINER Dustin Kirkland <kirkland@ubuntu.com>
ADD swline /swline
ENTRYPOINT /swline
