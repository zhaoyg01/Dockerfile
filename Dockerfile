FROM centos
MAINTAINER zhao yonggang zhaoyg@test.com

RUN yum -y install ruby rubygems rubygem-rake
RUN gem install --no-rdoc --no-ri rspec ci_reporter_rspec
