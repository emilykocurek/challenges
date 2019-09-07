class Card
  attr_accessor :rank, :suit 
  def initialize (rank, suit) #attributes - rank / suit 
    self.rank = rank # @rank = rank
    self.suit = suit # @suit = suit 
  end

  def output_card   #method example                          
    #self.output_card
    puts "The #{self.rank} of #{self.suit}"    #puts "#{@rank} of #{@suit}"
  end                                        

  def self.random_card   #card.random_card                   
    Card.new(rand(10), :spades)            
  end                                          
end

class Deck 
#def initialize
  #cards = [] 
  #@cards << Card.new(10, :spades) 
  #@cards << Card.new(9, :diamonds) 
#end 

#def output
  #@cards.each do |card|
  #card.output_card
#end
  def initialize
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A'] 
    @suits = ['clubs', 'hearts', 'spades', 'diamonds'] 
    @cards = []

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
  end

    @cards.shuffle!
  end
  #def shuffle
    #@cards.shuffle!
  #end

  def deal (number)
    number.times {@cards.shift.output_card}
  end 
end

#card = Card.random_card #Card.new(10, :spades) 
#card.output_card
#card.rank = 9 
#card.output_card is the same as below: 
#puts card 
#puts card.rank 
#puts card.suit


deck = Deck.new
#deck.shuffle
deck.deal (1)

#attr_reader :rank, :suit is the same as : get what the rank & suit is 

#Def rank - getter
#@rank
#end

#def suit
#@suit
#end


# attr_writer :rank, :suit is the same as: set or change what the rank & suit is 
# def rank=(rank) - setter rank
#  @rank = rank
# end

# def suit =(suit) - setter suit
#  @suit = suit
# end