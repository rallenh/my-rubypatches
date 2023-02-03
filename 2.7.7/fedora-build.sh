#!/usr/bin/env bash

sudo \
ruby-install \
  --no-install-deps \
  --patch ruby-2.7.7-fedora-railsexpress-patches.patch \
  --cleanup \
  --install-dir /opt/rubies/ruby-2.7.7 \
  ruby 2.7.7 -- \
  --build=x86_64-pc-linux-gnu \
  --host=x86_64-pc-linux-gnu \
  --exec-prefix=/opt/rubies/ruby-2.7.7 \
  --libdir=/opt/rubies/ruby-2.7.7/lib \
  --localstatedir=/opt/rubies/ruby-2.7.7/var \
  --datarootdir=/opt/rubies/ruby-2.7.7/share \
  --with-rubylibprefix=/opt/rubies/ruby-2.7.7/lib/ruby \
  --with-archlibdir=/opt/rubies/ruby-2.7.7/lib \
  '--with-rubyarchprefix=$(rubylibprefix)/$(arch)' \
  '--with-sitedir=$(rubylibprefix)/site_ruby' \
  '--with-sitearchdir=$(sitelibdir)/$(sitearch)' \
  '--with-vendordir=$(rubylibprefix)/vendor_ruby' \
  '--with-vendorarchdir=$(vendorlibdir)/$(sitearch)' \
  --with-rubyhdrdir=/opt/rubies/ruby-2.7.7/include/ruby \
  --with-rubyarchhdrdir=/opt/rubies/ruby-2.7.7/include/ruby \
  '--with-sitearchhdrdir=$(sitehdrdir)/$(arch)' \
  '--with-vendorarchhdrdir=$(vendorhdrdir)/$(arch)' \
  '--with-sitehdrdir=$(rubyhdrdir)/site_ruby' \
  '--with-vendorhdrdir=$(rubyhdrdir)/vendor_ruby' \
  --with-rubygemsdir=/opt/rubies/ruby-2.7.7/lib \
  --with-ruby-pc=ruby.pc \
  --with-compress-debug-sections=no \
  --disable-rpath \
  --disable-shared \
  --enable-static \
  --disable-multiarch \
  --enable-debug-env \
  CFLAGS="-O2 -g -pipe -Wall -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -Wp,-D_GLIBCXX_ASSERTIONS -fexceptions -fstack-protector-strong -grecord-gcc-switches -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1 -m64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection" \
  CXXFLAGS="-O2 -g -pipe -Wall -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -Wp,-D_GLIBCXX_ASSERTIONS -fexceptions -fstack-protector-strong -grecord-gcc-switches -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1 -m64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection" \
  EXTLDFLAGS="-Wl,-z,relro -Wl,--as-needed  -Wl,-z,now -specs=/usr/lib/rpm/redhat/redhat-hardened-ld"

