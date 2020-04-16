FROM golang:1.14-nanoserver
MAINTAINER Wesley Haegens

RUN echo '*** Downloading...' \
	&& git clone https://github.com/lnmx/cam \
	&& cd cam \
	&& export GOPATH=`pwd` \
	&& echo '*** Building...' \
	&& go build cam \
	&& echo '*** Done' \

## Mount path /cam/settings.json for configuration
## See https://github.com/lnmx/cam for options

CMD ./cam