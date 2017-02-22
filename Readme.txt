Worker information
hostname: i-018f4fe-precise-production-2-worker-org-docker.travisci.net:dec67fb3-a9ad-45a5-936e-af126e3a2b11
version: v2.5.0 https://github.com/travis-ci/worker/tree/da3a43228dffc0fcca5a46569ca786b22991979f
instance: 4686469:travis:ruby
startup: 688.385614ms
system_info
Build system information
Build language: ruby
Build group: stable
Build dist: precise
Build id: 204228801
Job id: 204228802
travis-build version: 2b04abe3b
Build image provisioning date and time
Thu Feb  5 15:09:33 UTC 2015
Operating System Details
Distributor ID:	Ubuntu
Description:	Ubuntu 12.04.5 LTS
Release:	12.04
Codename:	precise
Linux Version
3.13.0-29-generic
Cookbooks Version
a68419e https://github.com/travis-ci/travis-cookbooks/tree/a68419e
GCC version
gcc (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3
Copyright (C) 2011 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
LLVM version
clang version 3.4 (tags/RELEASE_34/final)
Target: x86_64-unknown-linux-gnu
Thread model: posix
Pre-installed Ruby versions
ruby-1.9.3-p551
Pre-installed Node.js versions
v0.10.36
Pre-installed Go versions
1.4.1
Redis version
redis-server 2.8.19
riak version
2.0.2
MongoDB version
MongoDB 2.4.12
CouchDB version
couchdb 1.6.1
Neo4j version
1.9.4
RabbitMQ Version
3.4.3
ElasticSearch version
1.4.0
Installed Sphinx versions
2.0.10
2.1.9
2.2.6
Default Sphinx version
2.2.6
Installed Firefox version
firefox 31.0esr
PhantomJS version
1.9.8
ant -version
Apache Ant(TM) version 1.8.2 compiled on December 3 2011
mvn -version
Apache Maven 3.2.5 (12a6b3acb947671f09b81f49094c53f426d8cea1; 2014-12-14T17:29:23+00:00)
Maven home: /usr/local/maven
Java version: 1.7.0_76, vendor: Oracle Corporation
Java home: /usr/lib/jvm/java-7-oracle/jre
Default locale: en_US, platform encoding: ANSI_X3.4-1968
OS name: "linux", version: "3.13.0-29-generic", arch: "amd64", family: "unix"
fix.CVE-2015-7547
$ export DEBIAN_FRONTEND=noninteractive
Reading package lists...
Building dependency tree...
Reading state information...
The following extra packages will be installed:
  libc-bin libc-dev-bin libc6-dev
Suggested packages:
  glibc-doc
The following packages will be upgraded:
  libc-bin libc-dev-bin libc6 libc6-dev
4 upgraded, 0 newly installed, 0 to remove and 270 not upgraded.
Need to get 8,840 kB of archives.
After this operation, 14.3 kB disk space will be freed.
Get:1 http://us.archive.ubuntu.com/ubuntu/ precise-updates/main libc6-dev amd64 2.15-0ubuntu10.15 [2,943 kB]
Get:2 http://us.archive.ubuntu.com/ubuntu/ precise-updates/main libc-dev-bin amd64 2.15-0ubuntu10.15 [84.7 kB]
Get:3 http://us.archive.ubuntu.com/ubuntu/ precise-updates/main libc-bin amd64 2.15-0ubuntu10.15 [1,177 kB]
Get:4 http://us.archive.ubuntu.com/ubuntu/ precise-updates/main libc6 amd64 2.15-0ubuntu10.15 [4,636 kB]
Fetched 8,840 kB in 0s (30.8 MB/s)
Preconfiguring packages ...
(Reading database ... 71420 files and directories currently installed.)
Preparing to replace libc6-dev 2.15-0ubuntu10.10 (using .../libc6-dev_2.15-0ubuntu10.15_amd64.deb) ...
Unpacking replacement libc6-dev ...
Preparing to replace libc-dev-bin 2.15-0ubuntu10.10 (using .../libc-dev-bin_2.15-0ubuntu10.15_amd64.deb) ...
Unpacking replacement libc-dev-bin ...
Preparing to replace libc-bin 2.15-0ubuntu10.10 (using .../libc-bin_2.15-0ubuntu10.15_amd64.deb) ...
Unpacking replacement libc-bin ...
Processing triggers for man-db ...
Setting up libc-bin (2.15-0ubuntu10.15) ...
(Reading database ... 71419 files and directories currently installed.)
Preparing to replace libc6 2.15-0ubuntu10.10 (using .../libc6_2.15-0ubuntu10.15_amd64.deb) ...
Unpacking replacement libc6 ...
Setting up libc6 (2.15-0ubuntu10.15) ...
Setting up libc-dev-bin (2.15-0ubuntu10.15) ...
Setting up libc6-dev (2.15-0ubuntu10.15) ...
Processing triggers for libc-bin ...
ldconfig deferred processing now taking place
git.checkout
0.47s$ git clone --depth=50 --branch=Travis https://github.com/SirSen/flashcards.git SirSen/flashcards
Cloning into 'SirSen/flashcards'...
remote: Counting objects: 531, done.
remote: Compressing objects: 100% (119/119), done.
remote: Total 531 (delta 59), reused 0 (delta 0), pack-reused 403
Receiving objects: 100% (531/531), 168.86 KiB | 0 bytes/s, done.
Resolving deltas: 100% (245/245), done.
Checking connectivity... done.
$ cd SirSen/flashcards
$ git checkout -qf 0e6749974e5f9f53b65dfd504f19c709cdcaac98
services
0.24s$ sudo service postgresql start
 * Starting PostgreSQL 9.1 database server
This job is running on container-based infrastructure, which does not allow use of 'sudo', setuid and setguid executables.
If you require sudo, add 'sudo: required' to your .travis.yml
See https://docs.travis-ci.com/user/workers/container-based-infrastructure/ for details.
rvm
23.72s$ rvm use 2.3.3 --install --binary --fuzzy
ruby-2.3.3 is not installed - installing.
Searching for binary rubies, this might take some time.
Found remote file https://s3.amazonaws.com/travis-rubies/binaries/ubuntu/12.04/x86_64/ruby-2.3.3.tar.bz2
Checking requirements for ubuntu.
Requirements installation successful.
ruby-2.3.3 - #configure
ruby-2.3.3 - #download
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 23.2M  100 23.2M    0     0  78.6M      0 --:--:-- --:--:-- --:--:-- 79.2M
No checksum for downloaded archive, recording checksum in user configuration.
ruby-2.3.3 - #validate archive
ruby-2.3.3 - #extract
ruby-2.3.3 - #validate binary
ruby-2.3.3 - #setup
ruby-2.3.3 - #gemset created /home/travis/.rvm/gems/ruby-2.3.3@global
ruby-2.3.3 - #importing gemset /home/travis/.rvm/gemsets/global.gems................................................
ruby-2.3.3 - #generating global wrappers........
ruby-2.3.3 - #uninstalling gem rubygems-bundler-1.4.4.
ruby-2.3.3 - #gemset created /home/travis/.rvm/gems/ruby-2.3.3
ruby-2.3.3 - #importing gemset /home/travis/.rvm/gemsets/default.gems....................
ruby-2.3.3 - #generating default wrappers........
chown: changing ownership of `/home/travis/.rvm/user/installs': Operation not permitted
Using /home/travis/.rvm/gems/ruby-2.3.3
$ export BUNDLE_GEMFILE=$PWD/Gemfile
$ ruby --version
ruby 2.3.3p222 (2016-11-21 revision 56859) [x86_64-linux]
$ rvm --version
rvm 1.26.10 (latest-minor) by Wayne E. Seguin <wayneeseguin@gmail.com>, Michal Papis <mpapis@gmail.com> [https://rvm.io/]
$ bundle --version
Bundler version 1.14.5
$ gem --version
2.6.8
install.bundler
81.45s$ bundle install --jobs=3 --retry=3 --deployment
Fetching gem metadata from https://rubygems.org/.........
Fetching version metadata from https://rubygems.org/..
Fetching dependency metadata from https://rubygems.org/.
Installing rake 12.0.0
Installing concurrent-ruby 1.0.4
Installing i18n 0.8.0
Installing minitest 5.10.1
Installing builder 3.2.3
Installing thread_safe 0.3.5
Installing erubis 2.7.0
Installing mini_portile2 2.1.0
Installing rack 2.0.1
Installing nio4r 1.2.1 with native extensions
Installing websocket-extensions 0.1.2
Installing mime-types-data 3.2016.0521
Installing arel 7.1.4
Installing public_suffix 2.0.5
Installing byebug 9.0.6 with native extensions
Installing coffee-script-source 1.12.2
Installing execjs 2.7.0
Installing method_source 0.8.2
Installing thor 0.19.4
Installing debug_inspector 0.0.2 with native extensions
Installing diff-lcs 1.3
Installing ffi 1.9.17 with native extensions
Installing interactor 3.1.0
Installing multi_json 1.12.1
Installing rb-fsevent 0.9.8
Installing pg 0.19.0 with native extensions
Installing puma 3.7.0 with native extensions
Using bundler 1.14.5
Installing rspec-support 3.5.0
Installing sass 3.4.23
Installing tilt 2.0.6
Installing turbolinks-source 5.0.0
Installing tzinfo 1.2.2
Installing nokogiri 1.7.0.1 with native extensions
Installing rack-test 0.6.3
Installing sprockets 3.7.1
Installing websocket-driver 0.6.5 with native extensions
Installing mime-types 3.1
Installing addressable 2.5.0
Installing coffee-script 2.4.1
Installing rb-inotify 0.9.8
Installing uglifier 3.0.4
Installing rspec-core 3.5.4
Installing rspec-expectations 3.5.0
Installing turbolinks 5.0.1
Installing rspec-mocks 3.5.0
Installing activesupport 5.0.1
Installing loofah 2.0.3
Installing xpath 2.0.0
Installing mail 2.6.4
Installing listen 3.0.8
Installing rails-html-sanitizer 1.0.3
Installing capybara 2.12.0
Installing rails-dom-testing 2.0.2
Installing globalid 0.3.7
Installing activemodel 5.0.1
Installing jbuilder 2.6.1
Installing factory_girl 4.8.0
Installing spring 2.0.1
Installing actionview 5.0.1
Installing activejob 5.0.1
Installing spring-watcher-listen 2.0.1
Installing activerecord 5.0.1
Installing actionpack 5.0.1
Installing actioncable 5.0.1
Installing actionmailer 5.0.1
Installing sprockets-rails 3.2.0
Installing railties 5.0.1
Installing simple_form 3.4.0
Installing coffee-rails 4.2.1
Installing factory_girl_rails 4.8.0
Installing jquery-rails 4.2.2
Installing rails 5.0.1
Installing rspec-rails 3.5.2
Installing sass-rails 5.0.6
Installing web-console 3.4.0
Bundle complete! 20 Gemfile dependencies, 76 gems now installed.
Bundled gems are installed into ./vendor/bundle.
before_script.1
0.00s$ cp config/database.travis.yml config/database.yml
before_script.2
0.31s$ psql -c 'create database travis_ci_test;' -U postgres
CREATE DATABASE
11.28s$ bundle exec rspec
.........
Deprecation Warnings:
Using `stub` from rspec-mocks' old `:should` syntax without explicitly enabling the syntax is deprecated. Use the new `:expect` syntax or explicitly enable `:should` instead. Called from /home/travis/build/SirSen/flashcards/spec/Interactor/card_feature_spec.rb:27:in `block (2 levels) in <top (required)>'.
If you need more of the backtrace for any of these deprecations to
identify where to make the necessary changes, you can configure
`config.raise_errors_for_deprecations!`, and it will turn the
deprecation warnings into errors, giving you the full backtrace.
1 deprecation warning total
Finished in 5.28 seconds (files took 5.66 seconds to load)
9 examples, 0 failures
The command "bundle exec rspec" exited with 0.
Done. Your build exited with 0.
