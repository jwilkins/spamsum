require 'spamsum'
s1 = "And she turned to me and took me by the hand and said, I've lost control again."
s2 = "And she screamed out kicking on her side and said, I've lost control again."
s3 = "Control"

# XXX: seems to be a min length issue for compares, replace with other dist func?
b1 = "\x11\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb\x11\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb"
b2 = "\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb\x11\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb\xcc"
b3 = "\x00\xaa\xbb\xcc\xdd\x66\x77\x88\x99\x00\xaa"


%w(s b).each { |t|
  (1..3).each { |x|
    puts "#{t}#{x}: #{eval("#{t}#{x}")}" if t == 's'
    puts "Spamsum.distance(#{t}1, #{t}#{x}): #{Spamsum.distance(eval("#{t}1"), eval("#{t}#{x}"))}"
    eval("s = #{t}#{x}")

    eval("$#{t}sum#{x} = Spamsum.sum(s)")
    puts "Spamsum.sum(#{t}#{x}): #{eval("$#{t}sum#{x}")}"
    puts "Spamsum.match(#{t}1, #{t}#{x}): #{Spamsum.match(eval("$#{t}sum1"), eval("$#{t}sum#{x}"))}"
  }
  puts "-"*40
}
