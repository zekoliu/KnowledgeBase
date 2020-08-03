FROM ruby:2.5.1
RUN sed -i "s/deb.debian.org/mirrors.163.com/g" /etc/apt/sources.list
RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs vim

#ENV RAILS_ENV production
#ENV RAILS_SERVE_STATIC_FILES true
#ENV RAILS_LOG_TO_STDOUT true
ENV TZ=Asia/Shanghai
ENV SERVE_PORT 3001

RUN mkdir /KnowledgeBase
WORKDIR /KnowledgeBase
COPY Gemfile /KnowledgeBase/Gemfile
COPY Gemfile.lock /KnowledgeBase/Gemfile.lock
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com
RUN  bundle install
COPY . /KnowledgeBase
RUN chmod +x /KnowledgeBase/startup.sh
EXPOSE $SERVE_PORT
CMD ["/KnowledgeBase/startup.sh"]
ENTRYPOINT ["/bin/sh", "-c"]
