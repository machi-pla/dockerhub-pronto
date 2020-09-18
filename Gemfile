# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby "2.7.1"

gem "pronto", github: "prontolabs/pronto"
gem "pronto-brakeman", require: false
gem "pronto-eslint_npm", require: false
gem "pronto-fasterer", require: false
gem "pronto-rails_best_practices", require: false
gem "pronto-reek", require: false
gem "pronto-rubocop", require: false, github: "prontolabs/pronto-rubocop"
gem "pronto-stylelint", require: false

# pronto-rubocopがrubocopの更新に追従しきれておらず、rubocop < 0.87.0 の制限が必要。
# またstandardは0.5.0で対応するrubocopのバージョンが0.85.0から0.89.1に上がるため、standard < 0.5.0 の制限が必要。
# 結果的に導入バージョンが以下の通りとなる。

gem "rubocop", "~> 0.85.1"
gem "rubocop-ast", "~> 0.0.3"
gem "rubocop-performance", "~> 1.6.1"
gem "rubocop-rails", "~> 2.6.0"
gem "rubocop-rspec", "~> 1.41.0"
gem "standard", "~> 0.4.7"
