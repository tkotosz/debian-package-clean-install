FROM bash AS build

COPY debian-package-clean-install /tmp/debian-package-clean-install
RUN chmod +x /tmp/debian-package-clean-install

FROM scratch

COPY --from=build /tmp/debian-package-clean-install /usr/bin/debian-package-clean-install