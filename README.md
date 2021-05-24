# debian-package-clean-install

Bash script to install debian packages then cleanup.

[Docker image](https://hub.docker.com/repository/docker/tkotosz/debian-package-clean-install) is also available.

## Usage

```
FROM debian

# install debian-package-clean-install script
COPY --from=tkotosz/debian-package-clean-install /usr/bin/debian-package-clean-install /usr/local/bin/debian-package-clean-install

# install packages
RUN debian-package-clean-install \
  git \
  iproute2 \
  patch

# other stuff...
...
```

See `Dockerfile` in the `test` folder for example.