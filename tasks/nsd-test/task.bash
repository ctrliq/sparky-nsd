# Check nsd is enabled and running
sudo systemctl is-enabled nsd
sudo systemctl is-active nsd

# Check DNS resolution using host command
host example.com 127.0.0.1

# Check individual records using dig command
dig a @127.0.0.1 +short example.com
dig a @127.0.0.1 +short ns1.example.com
dig a @127.0.0.1 +short www.example.com
dig a @127.0.0.1 +short mail.example.com
dig mx @127.0.0.1 +short example.com
