FROM arm64v8/ruby

RUN apt update
RUN gem install bundler

RUN echo 'source "https://rubygems.org" \n\
gem "jekyll" \n\
gem "minima", "~>2.5" \n\
gem "github-pages","~> 206", group: :jekyll_plugins \n\
group :jekyll_plugins do \n\
  gem "jekyll-feed", "~> 0.12" \n\
end \n\
' > Gemfile
RUN cat Gemfile
RUN bundle install

EXPOSE 4000

WORKDIR /jekyll

CMD bundle exec jekyll serve --host 0.0.0.0

