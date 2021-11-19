FROM ghcr.io/frankier/skelshop_nvcaffe:latest

WORKDIR /opt/pose_face_cluster

RUN mkdir -p workflow/rules/ workflow/scripts/ && \
	ln -sf /opt/skelshop/workflow/rules/*.smk workflow/rules/ && \
	ln -sf /opt/skelshop/workflow/scripts/*.py workflow/scripts/

ADD workflow workflow

RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
	chmod a+rx /usr/local/bin/youtube-dl

RUN ln /.skelshop_env /.singularity.d/env/89-environment.sh

ENTRYPOINT ["/usr/bin/bash", "/.skelshop_entrypoint"]
