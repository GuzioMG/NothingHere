FROM gitpod/workspace-full-vnc
                    
USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get --yes --force-yes install  -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/

RUN sudo apt update
RUN sudo apt-get update

#I found GCP support useful, so I added it. If you need a tool, just make a PR! 
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN sudo apt-get --yes --force-yes install  apt-transport-https ca-certificates gnupg
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk-app-engine-
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk-app-engine-
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk-app-engine-
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk-bigtable-emulator
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk-cbt
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk-cloud-build-local
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk-datalab
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk-datastore-emulator
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk-firestore-emulator
RUN sudo apt-get --yes --force-yes install  google-cloud-sdk-pubsub-emulator
RUN sudo apt-get --yes --force-yes install  kubectl