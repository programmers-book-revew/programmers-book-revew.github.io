#!/usr/bin/env ruby
# require 'rubygems'
require 'date'
require 'json'
require 'set'

def read_reviews
  review_json = JSON.parse(File.read('reviews.json'))
  # review_json = JSON.parse(File.read('test.json'))
#  puts review_json
  review_json
end

def reviews_to_jekylls reviews
  jekylls = []
  reviews.each do |review|
    title, amazon_url, book_info, 
    image_file, date_str, rank, review_text, genres = review
    review_text = review_text.gsub(/([\n|\s])(https?:\/\/[\w_.-\/\?#%&=,:]*)([\n|\s])/, 
                                   '\1[\2](\2)\3')
    create_date = Date.parse(date_str)
    header        = jekyll_header title, genres, rank
    file_name     = jekyll_file_name create_date, image_file
    contents      = jekyll_contents  review_text, rank, create_date, book_info, 
                    image_file, amazon_url, header
    jekylls << [file_name, contents]
  end
  jekylls
end

def reviews_to_categories_and_tags reviews
  categories, tags = Set.new, Set.new
  reviews.each do |review|
    title, amazon_url, book_info, 
    image_file, date_str, rank, review_text, genres = review
    genres.each do |genre|
      tags << genre
    end
    categories << rank
  end
  [categories.to_a, tags.to_a]
end


def jekyll_contents review_text, rank, create_date, book_info, image_file, amazon_url, header
<<-EOS  
#{header}

<div class="book"><div class="book_image"><a href="#{amazon_url}"><img src="/images/#{image_file}.jpg"></img></a></div><div class="book_info">#{book_info}</div><div class="clear"></div></div>

#{review_text}
EOS
end

def jekyll_file_name create_date, image_file
  pwd + '/__posts/'+create_date.strftime("%Y-%m-%d-")+image_file+'.md'
end

def jekyll_header title, genres, rank
  <<-EOS
---
layout: post
title: #{title}
categories: rank_#{rank}
tags: [#{genres.join(', ')}]
---
  EOS
end

def json_to_jekyll
  reviews = read_reviews
  jekylls = reviews_to_jekylls reviews
  jekylls.each do |jekyll|
    file_name, contents = jekyll
    File.open(file_name, 'w') do |f|
      f.puts contents
    end
  end
  categories, tags = reviews_to_categories_and_tags reviews
  puts "#{categories.inspect}, #{tags.inspect}"
  categories.each do |category|
    file_name = pwd + '/__category/rank_' + category + '.md'
    File.open(file_name, 'w') do |f|
      f.puts category_header(category)
    end
  end
  tags.each do |tag|
    file_name = pwd + '/__tag/' + tag + '.md'
    File.open(file_name, 'w') do |f|
      f.puts tag_header(tag)
    end
  end
end

def category_header category
  rank = category.sub(/^rank_/, '').to_i
  <<-EOS
---
layout:    blog_by_category
category:  rank_#{category}
permalink: rank/#{rank}/
---
  EOS
end

def tag_header tag
  <<-EOS
---
layout:    blog_by_tag
tag:       #{tag}
permalink: tag/#{tag}/
---
  EOS
end



def pwd
  File.expand_path File.dirname(__FILE__)
end

json_to_jekyll
