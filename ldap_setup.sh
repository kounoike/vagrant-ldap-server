#!/bin/sh

ldapadd -D "cn=admin,dc=example,dc=com" -w password -f /vagrant/base.ldif
ldapadd -D "cn=admin,dc=example,dc=com" -w password -f /vagrant/user.ldif

