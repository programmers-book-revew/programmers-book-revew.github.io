# usage:
# ./script/runner -e development extract_book_review.rb > reviews.json
def each_review
  reviews = Review.find_reviews
  reviews.each do |r|
    next if r.user_id != 12 and r.user_id != 9
    text = r.review.gsub('"', '\\"').gsub(',', '\,').gsub("\r\n", '\n').gsub("\n", '\n').gsub("\r", '\n')
    b    = r.book
    description = b.description.gsub('"', '\\"').gsub(',', '\,').gsub("\r\n", '').gsub("\n", '\n').gsub("\r", '\n')
    image_url = b.image_url.sub(/^\/images\//, '').sub(/\.jpg/, '')
    yield "[\"#{b.title}\", \"#{b.amazon_url}\", \"#{description}\", \"#{image_url}\", \"#{r.create_at}\", \"#{r.rank}\", \"#{text}\", #{b.genres.map{|g|g.genre}.inspect}]"
  end
end

def reviews
  reviews = []
  each_review do |review|
    reviews << review
  end
  reviews
end

puts "[#{reviews.join(",\n")}]"
