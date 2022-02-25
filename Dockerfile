FROM registry.access.redhat.com/ubi8/nodejs-14

RUN yarn

ENV HOST=0.0.0.0 PORT=3000

EXPOSE 3000/tcp

## Uncomment the below line to update image security content if any
# USER root
# RUN dnf -y update-minimal --security --sec-severity=Important --sec-severity=Critical && dnf clean all 

CMD ["yarn", "start"]
