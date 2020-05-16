=====================================
MS SQL Server on Linux - Docker image
=====================================

``ACCEPT_EULA=Y`` is baked in, ``/var/opt/mssql`` is a `volume`_.
You can pull the image with ::

  docker pull docker.pkg.github.com/bravoaero/mssqld-docker/mssqld-docker

For the ``docker pull`` command to work, you'll need to create
a "Personal access token" in your Github account's "`Developer settings`_"
with the ``read:packages`` permission, and configure ``docker`` to authenticate
with the `docker.pkg.github.com` registry using this token with ::

  docker login -u NAME -p TOKEN https://docker.pkg.github.com

where ``NAME`` is your Github login and ``TOKEN`` is the token just generated.

.. _volume: https://docs.docker.com/engine/reference/builder/#volume
.. _Developer settings: https://github.com/settings/tokens
