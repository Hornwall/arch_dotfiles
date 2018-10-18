versions=$(rbenv versions | sed 's/\*//g' | awk -F ' ' '{print $1}' | grep -v system)
while read -r version; do
  rbenv local $version
  gem install ripper-tags
  gem install gem-ripper-tags
  gem install bundler
  gem install neovim
  gem ripper_tags --reindex


done <<< $versions
