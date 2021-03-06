require 'gingerice'

PERSONALITIES = ["Excuse me, but I think you made a mistake there", "Ehem", "...", "FTFY"]

class Post
  attr_reader :results, :correction

  def initialize(comment)
    @comment = comment
    @parser = Gingerice::Parser.new
    @results = @parser.parse(@comment)
    @corrected = results["result"]
    @count = results["corrections"].length
  end

  def corrections_count
    { count: @count }
  end

  def snootify
    "#{PERSONALITIES.sample} \n#{@corrected}"
  end

end

puts test = Post.new("Your not their").snootify
#puts test.correct
#instatiate a post(with input)
#return boolean, correction
# global method (comment) return, a boolean and a string
# bool for if they need a comment
# string with the comment

# TextCorrection accepts a string...

#   # corrections.empty? => don't post reply else be a dick
#   {"text"=>"your an idiot",
#    "result"=>"You're an idiot",
#    "corrections"=>[{"text"=>"your",
#                     "correct"=>"You're",
#                     "definition"=>nil,
#                     "start"=>0,
#                     "length"=>4}]}

# result["corrections"].empty?
# Do nothing

# accept a string and send a message to Snoo interface if action is needed
