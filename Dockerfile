FROM golang:1.14-nanoserver
MAINTAINER Wesley Haegens

RUN git clone https://github.com/lnmx/cam \
  && cd cam \
  && export GOPATH=`pwd` \
  && go build cam

## Mount path /cam/settings.json for configuration
## See https://github.com/lnmx/cam for options

CMD ./cam