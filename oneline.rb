#!/bin/ruby
require "colorize"
#----------------------------------------------------------------------------------------------------------
# This is a hacky way of just executing the last line of the file in Ruby
eval File.readlines(__FILE__).last
exit

################################################################################
#                                                                              #
# In one line of Ruby you can...                                               #
#                                                                              #
################################################################################

################################################################################
# 1. Print a message (laaame)                                                  #
################################################################################
puts "Hello World!"

################################################################################
# 2. Do multiple assignments                                                   #
################################################################################
one, two, three = 1, 2, 3
# In particular, swap two variables and some Haskell-style pattern matching    #
one, two = two, one
x, *xs = [1, 2, 3, 4]

################################################################################
# 3. Cheer up on Fridays                                                       #
################################################################################
puts "Hooray!" if Date.today.friday?

################################################################################
# 4. Print an array as a numbered list                                         #
################################################################################
list = %w[this is not a long list]
puts list.each_with_index.map { |w,i| "#{i}. #{w}" }

################################################################################
# 5. Find the inner product of two vectors                                     #
################################################################################
v1 = [6, 4, -1]
v2 = [-9, 0, 1]
inner_product = v1.zip(v2).inject(0) { |p, (n, m)| p + n * m }
# result: -55                                                                  #

################################################################################
# BONUS! Check primality                                                       #
################################################################################
(2..Math.sqrt(p)).none? { |d| p % d == 0 }

################################################################################
# 6. Create your own type of exception                                         #
################################################################################
class MyCustomError < StandardError; end
# Later you can `raise MyCustomError`                                          #

################################################################################
# 7. Start a web server in the current directory                               #
################################################################################
WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd).start

################################################################################
# 8. Search the next solution of the First Ascent hill-climbing algorithm      #
################################################################################
solution.neighborhood.detect { |attempt, fitness| fitness > @current_fitness }
# This was actually implemented in https://git.io/vPxQ6                        #
# but changed in later versions                                                #

################################################################################
# 9. Generate a Hash that calculates the Fibonacci sequence                    #
################################################################################
fibonacci = Hash.new { |h, i| h[i] = h[i - 2] + h[i - 1] }.update(0 => 0, 1 => 1)
# result:                                                                      #
# > fibonacci[200]                                                             #
#=> 280571172992510140037611932413038677189525                                 #

################################################################################
# 10. Display a file by blocks, as a presentation                              #
################################################################################
File.read("oneline.rb").gsub(/^(#.*?)$/, '\1'.on_red).white.split("\n\n").each { |b| puts `clear`+b; gets }
