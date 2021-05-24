FROM debian

# install debian-package-clean-install script
COPY --from=tkotosz/debian-package-clean-install /usr/bin/debian-package-clean-install /usr/local/bin/debian-package-clean-install

# install packages
RUN debian-package-clean-install \
  git \
  iproute2 \
  patch

ENTRYPOINT ["sleep","infinity"]