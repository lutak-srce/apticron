# cron entry for apticron
# this file is managed by Puppet

24 * * * 0 root if test -x /usr/sbin/apticron; then /usr/sbin/apticron --cron; else true; fi
