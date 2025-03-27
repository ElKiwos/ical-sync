FROM python:3.13

ARG VERSION=0.0.0
ENV SETUPTOOLS_SCM_PRETEND_VERSION=$VERSION

RUN mkdir /app
WORKDIR /app
COPY . .
# Mount .git for version detection
# --mount=source=.git,target=.git,type=bind
RUN  pip install .
CMD ics_caldav_sync
