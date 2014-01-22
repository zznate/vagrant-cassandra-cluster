# Vagrant Image for Cassandra Cluster Manager (CCM)

This is a pretty straight forward Vagrant file for deploying a box which contains Cassandra Cluster Manager (CCM). CCM is an excellent tool in and of itself. It can be found here: [https://github.com/pcmanus/ccm/](https://github.com/pcmanus/ccm/). 

## Recommended Usage

Keep this Vagrant file in the top level of your Java project directory (at the same level as your `pom.xml` or `build.xml` files).

Once there, follow these steps to load the image, login then start a three node Cassandra cluster:

1. vagrant up

2. vagrant ssh

3. ccm create cluster-1_2_12 -v 1.2.12 -n 3 -i 192.168.33.1

4. ccm start

These steps create a running three node cluster which can be accessed via `192.168.33.11, 192.168.33.12, 192.168.33.13`. 


