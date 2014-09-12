#!/bin/sh

ldapmodify -D "uid=user1,ou=People,dc=example,dc=com" -w user1 -f /vagrant/usermod.ldif
