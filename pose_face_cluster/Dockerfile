FROM ghcr.io/frankier/skelshop_nvcaffe:latest

WORKDIR /opt/blur_sing

RUN mkdir -p workflow/rules/ workflow/scripts/ && \
	ln -sf /opt/skelshop/workflow/rules/*.smk workflow/rules/ && \
	ln -sf /opt/skelshop/workflow/scripts/*.py workflow/scripts/
	ln -sf /opt/skelshop/workflow/scripts/*.py scripts/

RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl &&
	chmod a+rx /usr/local/bin/youtube-dl

ENTRYPOINT ["/usr/bin/bash", "/.skelshop_entrypoint"]
