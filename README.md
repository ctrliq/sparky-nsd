# Sparky NSD

Verify knot installation cookbook on Rocky Linux using Sparky

## Cookbook

<https://docs.rockylinux.org/guides/dns/nsd_authoritative_dns/>

## Report example

```console
[task stdout]
15:16:21 :: Last metadata expiration check: 0:16:19 ago on Fri 03 Oct 2025 03:00:02 PM CDT.
15:16:21 :: Dependencies resolved.
15:16:21 :: ================================================================================
15:16:21 ::  Package               Architecture    Version            Repository       Size
15:16:21 :: ================================================================================
15:16:21 :: Installing:
15:16:21 ::  epel-release          noarch          8-18.el8           extras           24 k
15:16:21 ::
15:16:21 :: Transaction Summary
15:16:21 :: ================================================================================
15:16:21 :: Install  1 Package
15:16:21 ::
15:16:21 :: Total download size: 24 k
15:16:21 :: Installed size: 35 k
15:16:21 :: Downloading Packages:
15:16:22 :: epel-release-8-18.el8.noarch.rpm                 62 kB/s |  24 kB     00:00
15:16:22 :: --------------------------------------------------------------------------------
15:16:22 :: Total                                            48 kB/s |  24 kB     00:00
15:16:22 :: Running transaction check
15:16:22 :: Transaction check succeeded.
15:16:22 :: Running transaction test
15:16:22 :: Transaction test succeeded.
15:16:22 :: Running transaction
15:16:22 ::   Preparing        :                                                        1/1
15:16:22 ::   Installing       : epel-release-8-18.el8.noarch                           1/1
15:16:22 ::   Running scriptlet: epel-release-8-18.el8.noarch                           1/1
15:16:22 :: Many EPEL packages require the CodeReady Builder (CRB) repository.
15:16:22 :: It is recommended that you run /usr/bin/crb enable to enable the CRB repository.
15:16:22 ::
15:16:22 ::   Verifying        : epel-release-8-18.el8.noarch                           1/1
15:16:22 ::
15:16:22 :: Installed:
15:16:22 ::   epel-release-8-18.el8.noarch
15:16:22 ::
15:16:22 :: Complete!
15:16:24 :: Extra Packages for Enterprise Linux 8 - x86_64   10 MB/s |  14 MB     00:01
15:16:28 :: Last metadata expiration check: 0:00:04 ago on Fri 03 Oct 2025 03:16:24 PM CDT.
15:16:30 :: Dependencies resolved.
15:16:30 :: ================================================================================
15:16:30 ::  Package        Architecture      Version                 Repository       Size
15:16:30 :: ================================================================================
15:16:30 :: Installing:
15:16:30 ::  nsd            x86_64            4.3.8-1.el8             epel            938 k
15:16:30 ::
15:16:30 :: Transaction Summary
15:16:30 :: ================================================================================
15:16:30 :: Install  1 Package
15:16:30 ::
15:16:30 :: Total download size: 938 k
15:16:30 :: Installed size: 2.8 M
15:16:30 :: Downloading Packages:
15:16:31 :: nsd-4.3.8-1.el8.x86_64.rpm                      1.5 MB/s | 938 kB     00:00
15:16:31 :: --------------------------------------------------------------------------------
15:16:31 :: Total                                           1.1 MB/s | 938 kB     00:00
15:16:31 :: Extra Packages for Enterprise Linux 8 - x86_64  1.6 MB/s | 1.6 kB     00:00
15:16:31 :: Key imported successfully
15:16:31 :: Running transaction check
15:16:31 :: Transaction check succeeded.
15:16:31 :: Running transaction test
15:16:31 :: Transaction test succeeded.
15:16:31 :: Running transaction
15:16:31 ::   Preparing        :                                                        1/1
15:16:31 ::   Running scriptlet: nsd-4.3.8-1.el8.x86_64                                 1/1
15:16:31 ::   Installing       : nsd-4.3.8-1.el8.x86_64                                 1/1
15:16:31 ::   Running scriptlet: nsd-4.3.8-1.el8.x86_64                                 1/1
15:16:31 ::   Verifying        : nsd-4.3.8-1.el8.x86_64                                 1/1
15:16:31 ::
15:16:31 :: Installed:
15:16:31 ::   nsd-4.3.8-1.el8.x86_64
15:16:31 ::
15:16:31 :: Complete!
15:16:32 :: Last metadata expiration check: 0:00:08 ago on Fri 03 Oct 2025 03:16:24 PM CDT.
15:16:33 :: Dependencies resolved.
15:16:33 :: ================================================================================
15:16:33 ::  Package            Arch       Version                      Repository     Size
15:16:33 :: ================================================================================
15:16:33 :: Installing:
15:16:33 ::  bind-utils         x86_64     32:9.11.36-16.el8_10.4       appstream     453 k
15:16:33 :: Installing dependencies:
15:16:33 ::  bind-libs          x86_64     32:9.11.36-16.el8_10.4       appstream     176 k
15:16:33 ::  bind-libs-lite     x86_64     32:9.11.36-16.el8_10.4       appstream     1.2 M
15:16:33 ::  bind-license       noarch     32:9.11.36-16.el8_10.4       appstream     104 k
15:16:33 ::  fstrm              x86_64     0.6.1-3.el8                  appstream      28 k
15:16:33 ::  protobuf-c         x86_64     1.3.0-8.el8                  appstream      36 k
15:16:33 ::  python3-bind       noarch     32:9.11.36-16.el8_10.4       appstream     152 k
15:16:33 ::
15:16:33 :: Transaction Summary
15:16:33 :: ================================================================================
15:16:33 :: Install  7 Packages
15:16:33 ::
15:16:33 :: Total download size: 2.1 M
15:16:33 :: Installed size: 4.9 M
15:16:33 :: Downloading Packages:
15:16:33 :: (1/7): bind-license-9.11.36-16.el8_10.4.noarch. 188 kB/s | 104 kB     00:00
15:16:33 :: (2/7): bind-libs-lite-9.11.36-16.el8_10.4.x86_6 1.8 MB/s | 1.2 MB     00:00
15:16:33 :: (3/7): bind-libs-9.11.36-16.el8_10.4.x86_64.rpm 266 kB/s | 176 kB     00:00
15:16:33 :: (4/7): fstrm-0.6.1-3.el8.x86_64.rpm             345 kB/s |  28 kB     00:00
15:16:33 :: (5/7): protobuf-c-1.3.0-8.el8.x86_64.rpm        408 kB/s |  36 kB     00:00
15:16:34 :: (6/7): python3-bind-9.11.36-16.el8_10.4.noarch. 2.7 MB/s | 152 kB     00:00
15:16:34 :: (7/7): bind-utils-9.11.36-16.el8_10.4.x86_64.rp 1.6 MB/s | 453 kB     00:00
15:16:34 :: --------------------------------------------------------------------------------
15:16:34 :: Total                                           2.3 MB/s | 2.1 MB     00:00
15:16:34 :: Running transaction check
15:16:34 :: Transaction check succeeded.
15:16:34 :: Running transaction test
15:16:34 :: Transaction test succeeded.
15:16:34 :: Running transaction
15:16:34 ::   Preparing        :                                                        1/1
15:16:34 ::   Installing       : protobuf-c-1.3.0-8.el8.x86_64                          1/7
15:16:34 ::   Installing       : fstrm-0.6.1-3.el8.x86_64                               2/7
15:16:34 ::   Installing       : bind-license-32:9.11.36-16.el8_10.4.noarch             3/7
15:16:34 ::   Installing       : bind-libs-lite-32:9.11.36-16.el8_10.4.x86_64           4/7
15:16:34 ::   Installing       : bind-libs-32:9.11.36-16.el8_10.4.x86_64                5/7
15:16:34 ::   Installing       : python3-bind-32:9.11.36-16.el8_10.4.noarch             6/7
15:16:34 ::   Installing       : bind-utils-32:9.11.36-16.el8_10.4.x86_64               7/7
15:16:34 ::   Running scriptlet: bind-utils-32:9.11.36-16.el8_10.4.x86_64               7/7
15:16:34 ::   Verifying        : bind-libs-32:9.11.36-16.el8_10.4.x86_64                1/7
15:16:34 ::   Verifying        : bind-libs-lite-32:9.11.36-16.el8_10.4.x86_64           2/7
15:16:34 ::   Verifying        : bind-license-32:9.11.36-16.el8_10.4.noarch             3/7
15:16:34 ::   Verifying        : bind-utils-32:9.11.36-16.el8_10.4.x86_64               4/7
15:16:34 ::   Verifying        : fstrm-0.6.1-3.el8.x86_64                               5/7
15:16:34 ::   Verifying        : protobuf-c-1.3.0-8.el8.x86_64                          6/7
15:16:35 ::   Verifying        : python3-bind-32:9.11.36-16.el8_10.4.noarch             7/7
15:16:35 ::
15:16:35 :: Installed:
15:16:35 ::   bind-libs-32:9.11.36-16.el8_10.4.x86_64
15:16:35 ::   bind-libs-lite-32:9.11.36-16.el8_10.4.x86_64
15:16:35 ::   bind-license-32:9.11.36-16.el8_10.4.noarch
15:16:35 ::   bind-utils-32:9.11.36-16.el8_10.4.x86_64
15:16:35 ::   fstrm-0.6.1-3.el8.x86_64
15:16:35 ::   protobuf-c-1.3.0-8.el8.x86_64
15:16:35 ::   python3-bind-32:9.11.36-16.el8_10.4.noarch
15:16:35 ::
15:16:35 :: Complete!
15:16:35 :: zone:
15:16:35 ::     name: example.com
15:16:35 ::     zonefile: /etc/nsd/example.com.zone
15:16:35 :: $TTL    86400 ; How long should records last?
15:16:35 :: ; $TTL used for all RRs without explicit TTL value
15:16:35 :: $ORIGIN example.com. ; Define our domain name
15:16:35 :: @  1D  IN  SOA ns1.example.com. hostmaster.example.com. (
15:16:35 ::                               2024061301 ; serial
15:16:35 ::                               3h ; refresh duration
15:16:35 ::                               15 ; retry duration
15:16:35 ::                               1w ; expiry duration
15:16:35 ::                               3h ; nxdomain error ttl
15:16:35 ::                              )
15:16:35 ::        IN  NS     ns1.example.com. ; in the domain
15:16:35 ::        IN  MX  10 mail.another.com. ; external mail provider
15:16:35 ::        IN  A      172.20.0.100 ; default A record
15:16:35 :: ; server host definitions
15:16:35 :: ns1    IN  A      172.20.0.100 ; name server definition
15:16:35 :: www    IN  A      172.20.0.101 ; web server definition
15:16:35 :: mail   IN  A      172.20.0.102 ; mail server definition
[task stderr]
15:16:50 :: Importing GPG key 0x2F86D6A1:
15:16:50 ::  Userid     : "Fedora EPEL (8) <epel@fedoraproject.org>"
15:16:50 ::  Fingerprint: 94E2 79EB 8D8F 25B2 1810 ADF1 21EA 45AB 2F86 D6A1
15:16:50 ::  From       : /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
15:16:50 :: Created symlink /etc/systemd/system/multi-user.target.wants/nsd.service → /usr/lib/systemd/system/nsd.service.
[task run: task.bash - tasks/nsd-test]
[task stdout]
15:16:50 :: enabled
15:16:50 :: active
15:16:50 :: Using domain server:
15:16:50 :: Name: 127.0.0.1
15:16:50 :: Address: 127.0.0.1#53
15:16:50 :: Aliases:
15:16:50 ::
15:16:50 :: example.com has address 172.20.0.100
15:16:50 :: example.com mail is handled by 10 mail.another.com.
15:16:50 :: 172.20.0.100
15:16:50 :: 172.20.0.100
15:16:50 :: 172.20.0.101
15:16:50 :: 172.20.0.102
15:16:50 :: 10 mail.another.com.
[task check]
stdout match (s) <enabled> True
stdout match (s) <active> True
stdout match (s) <Using domain server:> True
stdout match (s) <Name: 127.0.0.1> True
stdout match (s) <Address: 127.0.0.1> True
stdout match (s) <Aliases:> True
stdout match (s) <^^  $$> True
stdout match (s) <example.com has address 172.20.0.100> True
stdout match (s) <example.com mail is handled by 10 mail.another.com.> True
stdout match (s) <172.20.0.100> True
stdout match (s) <172.20.0.100> True
stdout match (s) <172.20.0.101> True
stdout match (s) <172.20.0.102> True
stdout match (s) <10 mail.another.com.> True
```
