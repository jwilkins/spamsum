require 'spamsum'
s1 = "And she turned to me and took me by the hand and said, I've lost control again."
s2 = "And she screamed out kicking on her side and said, I've lost control again."
s3 = "Control"

puts "s1: #{s1}"
puts "s2: #{s2}"
puts "s3: #{s3}"
puts "Spamsum.distance(s1, s2): #{Spamsum.distance(s1, s2)}"
puts "Spamsum.distance(s1, s3): #{Spamsum.distance(s1, s3)}"
puts "-"*40

(1..3).each { |x|
  eval("s = s#{x}")

  eval("$sum#{x} = Spamsum.sum(s, s.length)")
  puts "Spamsum.sum(s#{x}): #{eval("$sum#{x}")}"
  puts "Spamsum.match(s1, s#{x}): #{Spamsum.match($sum1, eval("$sum#{x}"))}"
}

puts "-"*40

# XXX: seems to be a min length issue for compares, replace with other dist func?
b1 = "\x11\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb\x11\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb"
b2 = "\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb\xcc\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb\xcc"
b3 = "\x00\xaa\xbb\xcc\xdd\x66\x77\x88\x99\x00\xaa"
(1..3).each { |x|
  eval("s = b#{x}")

  eval("$bsum#{x} = Spamsum.sum(s, s.length)")
  puts "Spamsum.sum(b#{x}): #{eval("$bsum#{x}")}"
  puts "Spamsum.match(b1, b#{x}): #{Spamsum.match($bsum1, eval("$bsum#{x}"))}"
}
