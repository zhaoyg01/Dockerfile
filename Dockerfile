FROM centos
MAINTAINER zhao yonggang zhaoyg@test.com

RUN yum update -y
RUN yum install -y centos-release-scl
RUN yum install -y rh-ruby22 rh-ruby22-ruby-devel  rh-ruby22-rubygem-rake
RUN scl enable rh-ruby22 bash
RUN yum install -y gcc gcc-c++ make
RUN ln -s /opt/rh/rh-ruby22/root/usr/lib64/libruby.so.2.2 /lib64/
RUN /opt/rh/rh-ruby22/root/usr/bin/gem install --no-rdoc --no-ri rspec ci_reporter_rspec

