FROM golang:1.14
MAINTAINER Wesley Haegens

RUN echo '*** Downloading...' \
	&& git clone https://github.com/lnmx/cam \
	&& cd cam \
	&& export GOPATH=`pwd` \
	&& echo '*** Building...' \
	&& go build cam \
	&& chmod +x cam \
	&& echo '*** Done'

## Mount path /cam/config.json for configuration
## See https://github.com/lnmx/cam for options

WORKDIR /cam/
CMD top