require 'spamsum'
s1 = "And she turned to me and took me by the hand and said, I've lost control again."
s2 = "And she screamed out kicking on her side and said, I've lost control again."
s3 = "Control"

puts s1
puts "  compared to"
puts s2
puts "= #{Spamsum.edit_distn(s1, s2)}"
puts "-"*40
puts s1
puts "  compared to"
puts s3
puts "= #{Spamsum.edit_distn(s1, s3)}"
puts "-"*40

sum1 = Spamsum.sum(s1, s1.length)
puts "Spamsum.sum(s1): #{sum1}"
sum2 = Spamsum.sum(s2, s2.length)
sum3 = Spamsum.sum(s3, s3.length)
puts "-"*40

puts "Spamsum.match s1->s1): #{Spamsum.match(sum1, sum1)}"
puts "Spamsum.match s1->s2): #{Spamsum.match(sum1, sum2)}"
puts "Spamsum.match s1->s3): #{Spamsum.match(sum1, sum3)}"
