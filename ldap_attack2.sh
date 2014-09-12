#!/bin/sh

ldapmodify -D "uid=user2,ou=People,dc=example,dc=com" -w user2 -f /vagrant/usermod2.ldif

