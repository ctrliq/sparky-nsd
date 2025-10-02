#!/bin/bash -

set -e

sudo dnf install epel-release -y
sudo dnf install nsd -y
sudo dnf install bind-utils -y # for host command

# Reset for idempotency
sudo systemctl disable --now nsd

# Begin

if [ ! -f /etc/nsd/nsd.conf.orig ]; then
    sudo cp /etc/nsd/nsd.conf /etc/nsd/nsd.conf.orig
fi


if ! grep -q "name: example.com" /etc/nsd/nsd.conf; then
cat <<'EOF' | sudo tee -a /etc/nsd/nsd.conf
zone:
    name: example.com
    zonefile: /etc/nsd/example.com.zone
EOF
fi

cat<<'EOF' | sudo tee /etc/nsd/example.com.zone
$TTL    86400 ; How long should records last?
; $TTL used for all RRs without explicit TTL value
$ORIGIN example.com. ; Define our domain name
@  1D  IN  SOA ns1.example.com. hostmaster.example.com. (
                              2024061301 ; serial
                              3h ; refresh duration
                              15 ; retry duration
                              1w ; expiry duration
                              3h ; nxdomain error ttl
                             )
       IN  NS     ns1.example.com. ; in the domain
       IN  MX  10 mail.another.com. ; external mail provider
       IN  A      172.20.0.100 ; default A record
; server host definitions
ns1    IN  A      172.20.0.100 ; name server definition
www    IN  A      172.20.0.101 ; web server definition
mail   IN  A      172.20.0.102 ; mail server definition
EOF

sudo systemctl enable --now nsd

# TODO: Add a secondary server

sleep 15
