source 'https://rubygems.org'

require 'json'
require 'open-uri'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)
plugins = [
    'jekyll',
    'jekyll-archives',
    'jekyll-paginate',
    'jekyll-sitemap',
    'jekyll-seo-tag',
    'github-pages',
    'jekyll-feed'
]

for plugin in plugins;
    gem plugin, versions[plugin]
end