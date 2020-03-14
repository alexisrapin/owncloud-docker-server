======================================
ownCloud server deployment with docker
======================================

.. image:: https://img.shields.io/badge/license-MIT-brightgreen.svg
   :target: https://github.com/alexisrapin/owncloud-docker-server/blob/master/LICENSE

.. image:: https://img.shields.io/github/v/release/alexisrapin/owncloud-docker-server
   :target: https://github.com/alexisrapin/owncloud-docker-server/releases


Ressources
==========

- Installing ownCloud with Docker: https://doc.owncloud.com/server/admin_manual/installation/docker/


Requirements
============

- `Docker <https://docs.docker.com/install/>`_
- `Docker Compose <https://docs.docker.com/compose/install/>`_


Configuration
=============

The environment configuration is found in the ``.env`` file.

The docker-compose configuration is found in the ``docker-compose.yml`` file.

By default, files and databases are located in the following directories:

::

    data     ownCloud data
    mysql    ownCloud database
    backups  ownCloud database backups
    redis    redis data

By default, the ownCloud server is accessible at ``locallhost:8080``.

The default admin credentials are:

- User: admin
- Password: admin

Use this default admin account to setup the web app.

Installation
============

Use ``make`` within the main project directory to manage the containers.

Build and start the ownCloud server containers:

::

    $ sudo make up

This can take a couple of minutes when starting the ownCloud server for the first time.

Check the containers status:

::

    $ sudo make ps

Stop the ownCloud server containers:

::

    $ sudo make down

Upgrade the ownCloud server version:

::

    $ sudo make upgrade OWNCLOUD_VERSION=<ownCloud version>
