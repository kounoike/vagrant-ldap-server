#!/bin/sh

perl -ple 'print "    by self write" if /by \* read/' /etc/ldap/slapd.conf > /root/slapd.conf
mv /root/slapd.conf /etc/ldap/
chown openldap:openldap /etc/ldap/slapd.conf
chmod 640 /etc/ldap/slapd.conf
service slapd restart
