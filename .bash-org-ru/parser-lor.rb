#!/usr/bin/env ruby
#
# parser.rb
# Copyright (C) 2016 uralbash <root@uralbash.ru>
#
# Distributed under terms of the MIT license.
#

require 'rss/2.0'
require 'cgi'
require 'net/http'
host = Net::HTTP.new('lorquotes.ru', 80)
resp = host.get('http://lorquotes.ru/rss/main.xml', nil)
parsed = RSS::Parser.parse(
  resp.body.gsub(/\< hr\>/, '< hr />'), false
)
parsed.items.each {
  |x| puts CGI::unescapeHTML(
    x.description.gsub("\n", "").gsub("<br />", "\n\n").
    gsub("<i>>", "").gsub("</i>", " ").
    gsub("<b>", "").gsub("</b>", "").strip
  );
  puts "%\n"
}
