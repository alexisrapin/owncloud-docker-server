======================================
ownCloud server deployment with docker
======================================

.. image:: https://img.shields.io/badge/license-MIT-brightgreen.svg
   :target: https://github.com/alexisrapin/owncloud-docker-server/blob/master/LICENSE

.. image:: https://img.shields.io/github/v/release/alexisrapin/owncloud-docker-server
   :target: https://github.com/alexisrapin/owncloud-docker-server/releases

Ressources
----------

- Installing ownCloud with Docker: https://doc.owncloud.com/server/admin_manual/installation/docker/

Installation
============

Requirements:
- `Docker <https://docs.docker.com/install/>`_
- `Docker Compose <https://docs.docker.com/compose/install/>`_

Start the ownCloud server:

::

    $ sudo docker-compose up -d

Check that the docker containers status:

::

    $ sudo docker-compose ps

Stop the ownCloud server:

::

    $ sudo docker-compose down
