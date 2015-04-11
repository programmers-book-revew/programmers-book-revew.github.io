#!/usr/bin/env ruby
# require 'rubygems'
require 'json'

review_json = JSON.parse(File.read('reviews.json'))
# review_json = JSON.parse(File.read('test.json'))
puts review_json
