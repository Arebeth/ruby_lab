class Greeter
  def greet
  	"Hiya."
  end

  def quote tag=nil
  	quotes = {
		:love => [
			"You only go around once, but if you play your cards right, once is enough.", 
			"You may be a puzzle, but I like the way the parts fit.", 
			"I like intelligent women. When you go out, it shouldn't be a staring contest." 
		],
		:life => [
			"The big lesson in life, baby, is never be scared of anyone or anything.", 
			"I'm gonna live till I die.",
			"For what is a man, what has he got. If not himself, then he has naught." 
		],
		:alcohol => [
			"Alcohol may be man's worst enemy, but the bible says love your enemy.", 
			"Basically, I'm for anything that gets you through the night - be it prayer, tranquilizers or a bottle of Jack Daniels."
		]
	}

	if tag && tag.to_sym != (:life || :love || :alcohol)
  		raise "Tag must be either 'life' or 'love' or 'alcohol'" 
  	else
	
	# an array has an h2 tag that takes in the quote keys (life, love, alcohol)
	# also opens a <ul>
		[
		"<h2>Quotes matching tag: '#{tag}'</h2>",
		"<ul>"
		#to the array, we are concatonating a new aray
		#.map goes over each of the keys from quote array
		#.to_sym converts the keys (strings) to symbols
		# then creates a list item with the quote to the array
		].concat(
		    quotes[tag.to_sym].map do |quote|
		    "<li><h3>#{quote}</h3></li>"
		# when it's done cycling through each ofthe quote and pushing it to the array,
		#it pushes the closing ul tag.
		  	end
		  	).push("</ul>")
	end #end if statement
	end
end