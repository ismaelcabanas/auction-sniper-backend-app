FROM openjdk:11

ARG vcs_url="Unknown"
ARG vcs_ref="Unknown"
ARG vcs_branch="Unknown"
ARG build_date="Unknown"

LABEL org.label-schema.vcs-type=git \
      org.label-schema.vcs-url=$vcs_url \
      org.label-schema.vcs-ref=$vcs_ref \
      org.label-schema.vcs-branch=$vcs_branch \
      org.label-schema.docker.dockerfile=/Dockerfile \
      org.label-schema.build-date=$build_date

# You can use JAVA_OPTS to customize your jvm flags (check gradle application plugin, it creates the script that this container runs)
#ENV JAVA_OPTS -Xmx512M

EXPOSE 8000
CMD ["/opt/meeting-monolith-app/bin/meeting-monolith-app"]

COPY ./Dockerfile /Dockerfile
COPY ./build/install/meeting-monolith-app /opt/meeting-monolith-app
