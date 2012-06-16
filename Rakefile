task :default do
  `rm ext/*.o ext/Makefile ext/spamsum*_wrap.c`
  if RUBY_VERSION =~ /^1.9/
    `cd ext && swig -ruby spamsum19.i && ruby extconf.rb && make`
  elsif RUBY_VERSION =~ /^1.8/
    `cd ext && swig -ruby spamsum.i && ruby extconf.rb && make`
  else
    puts "Ruby version #{RUBY_VERSION}? Can't help you.. "
  end
end
