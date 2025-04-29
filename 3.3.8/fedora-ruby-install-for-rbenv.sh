#!/usr/bin/env bash
__RBINSTALL_DIR__=${HOME}/.rbenv/versions
__RUBY_VER__=3.3.8
export HAVE_BASERUBY=no
##--with-ruby-version=${__RUBY_VER__%.*}.0 \

# use a more traditional style of install vs Fedora
ruby-install \
  --no-install-deps \
  --patch ruby-${__RUBY_VER__}-fedora-railsexpress-patches.patch \
  --cleanup \
  --install-dir ${__RBINSTALL_DIR__}/${__RUBY_VER__} \
  ruby ${__RUBY_VER__} -- \
  --build=x86_64-redhat-linux-gnu \
  --host=x86_64-redhat-linux-gnu \
  --disable-dependency-tracking \
  --prefix=${__RBINSTALL_DIR__}/${__RUBY_VER__} \
  --with-rubygemsdir=${__RBINSTALL_DIR__}/${__RUBY_VER__}/lib/rubygems \
  --with-ruby-pc=ruby.pc \
  --with-compress-debug-sections=no \
  --disable-rpath \
  --enable-mkmf-verbose \
  --disable-shared \
  --enable-static \
  --enable-multiarch \
  --enable-yjit \
  --enable-rjit \
  --enable-debug-env \
  CFLAGS="-O2 -flto=auto -ffat-lto-objects -fexceptions -g -grecord-gcc-switches -pipe -Wall -Werror=format-security -Wp,-U_FORTIFY_SOURCE,-D_FORTIFY_SOURCE=3 -Wp,-D_GLIBCXX_ASSERTIONS -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -fstack-protector-strong -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1  -m64   -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer" \
  CXXFLAGS="-O2 -flto=auto -ffat-lto-objects -fexceptions -g -grecord-gcc-switches -pipe -Wall -Werror=format-security -Wp,-U_FORTIFY_SOURCE,-D_FORTIFY_SOURCE=3 -Wp,-D_GLIBCXX_ASSERTIONS -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -fstack-protector-strong -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1  -m64   -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer" \
  LDFLAGS="-Wl,-z,relro -Wl,--as-needed  -Wl,-z,now -specs=/usr/lib/rpm/redhat/redhat-hardened-ld -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1  -Wl,--build-id=sha1"

# ruby-install \
#   --no-install-deps \
#   --patch ruby-${__RUBY_VER__}-fedora-railsexpress-patches.patch \
#   --cleanup \
#   --install-dir ${__RBINSTALL_DIR__}/${__RUBY_VER__} \
#   ruby ${__RUBY_VER__} -- \
#   --build=x86_64-pc-linux-gnu \
#   --host=x86_64-pc-linux-gnu \
#   --exec-prefix=${__RBINSTALL_DIR__}/${__RUBY_VER__} \
#   --libdir=${__RBINSTALL_DIR__}/${__RUBY_VER__}/lib \
#   --localstatedir=${__RBINSTALL_DIR__}/${__RUBY_VER__}/var \
#   --datarootdir=${__RBINSTALL_DIR__}/${__RUBY_VER__}/share \
#   --with-rubylibprefix=${__RBINSTALL_DIR__}/${__RUBY_VER__}/lib/ruby \
#   --with-archlibdir=${__RBINSTALL_DIR__}/${__RUBY_VER__}/lib \
#   '--with-rubyarchprefix=$(rubylibprefix)/$(arch)' \
#   '--with-sitedir=$(rubylibprefix)/site_ruby' \
#   '--with-sitearchdir=$(sitelibdir)/$(sitearch)' \
#   '--with-vendordir=$(rubylibprefix)/vendor_ruby' \
#   '--with-vendorarchdir=$(vendorlibdir)/$(sitearch)' \
#   --with-rubyhdrdir=${__RBINSTALL_DIR__}/${__RUBY_VER__}/include/ruby \
#   --with-rubyarchhdrdir=${__RBINSTALL_DIR__}/${__RUBY_VER__}/include/ruby \
#   '--with-sitearchhdrdir=$(sitehdrdir)/$(arch)' \
#   '--with-vendorarchhdrdir=$(vendorhdrdir)/$(arch)' \
#   '--with-sitehdrdir=$(rubyhdrdir)/site_ruby' \
#   '--with-vendorhdrdir=$(rubyhdrdir)/vendor_ruby' \
#   --with-rubygemsdir=${__RBINSTALL_DIR__}/${__RUBY_VER__}/lib \
#   --with-ruby-pc=ruby.pc \
#   --with-compress-debug-sections=no \
#   --disable-rpath \
#   --disable-shared \
#   --enable-static \
#   --disable-multiarch \
#   --enable-yjit \
#   --enable-rjit \
#   --enable-debug-env \
#   CFLAGS="-O2 -g -pipe -Wall -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -Wp,-D_GLIBCXX_ASSERTIONS -fexceptions -fstack-protector-strong -grecord-gcc-switches -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1 -m64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection" \
#   CXXFLAGS="-O2 -g -pipe -Wall -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -Wp,-D_GLIBCXX_ASSERTIONS -fexceptions -fstack-protector-strong -grecord-gcc-switches -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1 -m64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection" \
#   EXTLDFLAGS="-Wl,-z,relro -Wl,--as-needed  -Wl,-z,now -specs=/usr/lib/rpm/redhat/redhat-hardened-ld"
