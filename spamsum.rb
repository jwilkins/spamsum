begin
  require 'spamsum_swig'
rescue LoadError
  require 'ext/spamsum_swig'
end
module Spamsum
  def Spamsum.sum(s, flags=0, bsize=0)
    Spamsum_swig.spamsum(s, s.length, flags, bsize)
  end

  def Spamsum.match(s1, s2)
    Spamsum_swig.spamsum_match(s1, s2)
  end

  def Spamsum.distance(s1, s2)
    Spamsum_swig.edit_distn(s1, s2)
  end
end
