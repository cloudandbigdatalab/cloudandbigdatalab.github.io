---
category: Cloud Computing
description: some stuff
title: API
---

## Objectives

In this tutorial, you will learn about the Application program Interface ,how it works with open stack.

| \# | Action | Detail | Time (min) |
|----|--------|--------|------------|
| 1 | Introduction of API on Open Stack | You will learn what is API and how it works with Open Stack. | 5 |
| 2 | Nova CLI installation and Configure RC file | To begin, we will learn the process of installing NOVA CLI and how to configure RC file | 10 |
| 3 | Key Stone Introduction and installation | We will discuss about Key stone its features and how API works with Key Stone. | 15 |
| 4 | Nova Usage | Lastly, we will implement the Nova on API | 10 |

## Prerequisites

-   Knowledge of API

-   A SSH Client(how to use SSH)

-   Basic Knowledge of LINUX

-   Basic knowledge on Open Stack applications.

## Introduction

### What is Application Program Interface?

An application program interface (API) is code that allows two software programs to communicate with each other. Typically, APIs are released for third-party development as part of a software development kit (SDK) or as an open API published on the Internet.

### What is Open API?

Open API (often referred to as OpenAPI new technology) is a term used in the Application Programming Interface (API) process that uses sets of technologies that enable websites to interact with each other by using REST, SOAP, JAVA SCRIPT other web technologies.

### How API works?

![]({{ image_path | append: "image5.png" }})

**API for OPEN STACK**

A set of language bindings that provide a language-level API for accessing OpenStack in a manner consistent with language standards.

![]({{ image_path | append: "image6.png" }})

Each OpenStack project provides a command-line client, which enables you to access the project API through easy-to-use commands

Some of the Open Stack Services and Clients

| Service | Client |
|---------|--------|
| Block Storage  | Cinder |
| Compute        | Nova   |
| Object Storage | Swift  |

## Nova CLI installation

Nova which is a client for Compute service which creates and manages images , instances and flavors.

Installing nova using pip

`pip install python-novaclien`

Uninistall Nova

`pip uninstall python-novaclient`

### Configuration of RC file

Login to the Chameloen Account > Project > Access & Security > API Access

![]({{ image_path | append: "image7.png" }})

Click on the Download Open Stack RC file and save it.

### Advanced resource leasing reservation.

Login to the Chameloen account > Project > Reservation > Leases > Create Lease/Delete Lease.

![]({{ image_path | append: "image8.png" }})

### Let us check how NOVA works

-   Using Chameleon account Create an instance

![]({{ image_path | append: "image9.png" }})

-   Login to port that is associated with the IP address.

-   Use the following Commands.

Open the RC configuration file that we have saved already.

`cat CH-816772-openrc.sh`

The file looks in the below format and verify the highlighted fields.

```bash
#!/bin/bash

# To use an Openstack cloud you need to authenticate against keystone, which
# returns a **Token** and **Service Catalog**.  The catalog contains the
# endpoint for all services the user/tenant has access to - including nova,
# glance, keystone, swift.
#
# *NOTE*: Using the 2.0 *auth api* does not mean that compute api is 2.0.  We
# will use the 1.1 *compute api*
export OS_AUTH_URL=https://ironic.chameleon.tacc.utexas.edu:5000/v2.0

# With the addition of Keystone we have standardized on the term **tenant**
# as the entity that owns the resources.
export OS_TENANT_ID=CH-816772
export OS_TENANT_NAME="CH-816772"

# In addition to the owning entity (tenant), openstack stores the entity
# performing the action as the **user**.
export OS_USERNAME="paulrad"

# With Keystone you pass the keystone password.
echo "Please enter your OpenStack Password: "
read -sr OS_PASSWORD_INPUT
export OS_PASSWORD=$OS_PASSWORD_INPUT

# If your configuration has multiple regions, we set that information here.
# OS_REGION_NAME is optional and only valid in certain environments.
export OS_REGION_NAME="regionOne"
# Don't leave a blank variable, unset it if it was empty
if [ -z "$OS_REGION_NAME" ]; then unset OS_REGION_NAME; fi
```

`source CH-816772-openrc.sh`

## KeyStone

Keystone is an OpenStack project that provides Identity, Token, Catalog and Policy services for use specifically by projects in the OpenStack family. It implements Open Stack's Identity API

Prerequisites for Keystone development

-   Git

-   Phython latest version

-   Virtual env

-   pip

-   msgfmt(part of gittext package)

-   setuptools.

Setup steps for keystone

`git clone https://git.openstack.org/openstack/keystone.git`

installing dependencies—for ubuntu

`sudo apt-get install python-dev python3-dev libxml2-dev libxslt1-dev libsasl2-dev libsqlite3-dev libssl-dev libldap2-dev libffi-dev`

Installing virtual environment and activating it

`python tools/install\_venv.py`

`source .venv/bin/activate`

Install the dependencies for running keystone

`pip install -r requirements.txt`

Install the dependencies for developing, testing, and running keystone

`pip install -r test-requirements.txt`

Use `python setup.py` to link Keystone into Python's site-packages

`python setup.py develop`

Verifying keystone is set up perfectly

`source .venv/bin/activate`

you should be able to import keystone with out any issue

`python -c "import keystone"`

Developing with Keystone

Configuring Keystone

`cp etc/keystone.conf.sample etc/keystone.conf`

Running Keystone

`tools/with_venv.sh bin/keystone-all`

Testing Keystone

`pip install tox`

To execute the tests just run

`tox`

## Nova Usage

### Check Nova usage

```sh
nova usage

Usage from 2015-05-27 to 2015-06-25:

+---------+--------------+-----------+---------------+
| Servers | RAM MB-Hours | CPU Hours | Disk GB-Hours |
+---------+--------------+-----------+---------------+
| 22 | 12716184.32 | 9031.38 | 144502.09 |
**+---------+--------------+-----------+---------------+ **
```

### Check for the Key Pair.

```sh
nova keypair-list

+---------------+-------------------------------------------------+
| Name | Fingerprint |
+---------------+-------------------------------------------------+
| Paul Rad | 5f:3e:27:7b:df:17:fe:18:15:7c:eb:65:84:14:75:7f |
| Ron_Laptop | 50:09:57:56:7f:80:53:e6:97:87:df:f0:b0:38:c9:e6 |
| Sam Silvestro | fa:c8:ba:fe:0e:7e:3e:a6:b3:b2:1f:61:25:31:37:0b |
**+---------------+-------------------------------------------------+ **
```

The above command will trigger the API of Nova and display the key pairs that are associated with it.

### Using API and deleting the keypairs

#### nova-keypair add

`nova keypair-add Testkeypair > Test.pem`

![]({{ image_path | append: "image10.png" }})

#### Checking for key list to ensure the keypair is added

```sh
nova keypair-list

**+---------------+-------------------------------------------------+**
**| Name | Fingerprint |**
**+---------------+-------------------------------------------------+**
**| Paul Rad | 5f:3e:27:7b:df:17:fe:18:15:7c:eb:65:84:14:75:7f |**
**| Ron_Laptop | 50:09:57:56:7f:80:53:e6:97:87:df:f0:b0:38:c9:e6 |**
**| Sam Silvestro | fa:c8:ba:fe:0e:7e:3e:a6:b3:b2:1f:61:25:31:37:0b |**
**| Testkeypair | be:3b:25:b8:7c:74:79:65:bf:58:42:ad:41:83:8d:a7 |**
**+---------------+-------------------------------------------------+**
```

#### nova-keypair-delete

`nova keypair-delete "TestKeypair"`

This will trigger to the NOVA API and deletes a key pair associated with it

![]({{ image_path | append: "image11.png" }})

#### Checking the keypair list to verify it is deleted correctly

```sh
nova keypair-list

+---------------+-------------------------------------------------+
| Name | Fingerprint |
+---------------+-------------------------------------------------+
| Paul Rad | 5f:3e:27:7b:df:17:fe:18:15:7c:eb:65:84:14:75:7f |
| Ron_Laptop | 50:09:57:56:7f:80:53:e6:97:87:df:f0:b0:38:c9:e6 |
| Sam Silvestro | fa:c8:ba:fe:0e:7e:3e:a6:b3:b2:1f:61:25:31:37:0b |
+---------------+-------------------------------------------------+
```

This can be achieved using other Cloud Source API like Swift, glance, neutron, trove, OpenStack, Cinder, etc.

## References

<http://docs.openstack.org/user-guide/cli_cheat_sheet.html#block-storage-cinder>

<http://docs.openstack.org/cli-reference/content/install_clients.html>
