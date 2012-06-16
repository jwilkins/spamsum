$LOAD_PATH.unshift File.expand_path("./ext")
$LOAD_PATH.unshift File.expand_path(".")
require 'spamsum'
s1 = "And she turned to me and took me by the hand and said, I've lost control again."
s2 = "And she screamed out kicking on her side and said, I've lost control again."
s3 = "Control"

# XXX: seems to be a min length issue for compares, replace with other dist func?
b1 = "\x11\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb\x11\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb"
b2 = "\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb\x11\x22\x33\x44\x55\x66\x77\x88\x99\xaa\xbb\xcc"
b3 = "\x00\xaa\xbb\xcc\xdd\x66\x77\x88\x99\x00\xaa"


%w(s b).each { |t|
  puts "-"*40
  (1..3).each { |x|
    puts "#{t}#{x}: #{eval("#{t}#{x}")}" if t == 's'
    puts "Spamsum.distance(#{t}1, #{t}#{x}): #{Spamsum.distance(eval("#{t}1"), eval("#{t}#{x}"))}"
    #eval("s = #{t}#{x}")
    puts "-"*20

#    es = "#{t}#{x}_sum = Spamsum.sum(#{t}#{x})"
#    puts es
#    eval(es)
#    puts "Spamsum.sum(#{t}#{x}): #{eval("#{t}#{x}_sum")}"
#    puts "Spamsum.match(#{t}1, #{t}#{x}): #{Spamsum.match(eval("$#{t}1_sum"), eval("$#{t}#{x}_sum"))}"
#    puts "-"*20

    es = "#{t}#{x}_hsum = Spamsum.sum_hex(#{t}#{x})"
    puts es
    eval(es)
#    puts "Spamsum.match(#{t}1, #{t}#{x}): #{Spamsum.match(eval("$#{t}1_hsum"), eval("$#{t}#{x}_hsum"))}"
  }
}

puts "-"*40
%w(s b).each { |t|
  (1..3).each { |x|
    puts "Spamsum.sum_hex(#{t}#{x}): #{eval("$#{t}#{x}_hsum")}"
  }
}

puts "Spamsum.sum_hex(s1*1000): #{Spamsum.sum_hex(s1*1000)}"
puts "Spamsum.sum_hex(s1*1000): #{Spamsum.sum_hex(open('random.bin').read)}"
