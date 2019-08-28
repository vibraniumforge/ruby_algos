class Card

    attr_accessor :rank, :suit
  
    def initialize(rank, suit)
      @rank=rank
      @suit=suit
    end
  
    def output_card
      puts "The #{@rank} of #{@suit}"
    end
end
  
class Deck
    def initialize
        @suits=["hearts", "spades", "clubs", "diamonds"]
        @ranks=["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @cards=[]
    
        @ranks.each do |rank|
            @suits.each do |suit|
            @cards << Card.new(rank, suit)
            end
        end
        @cards.shuffle!
    end
  
    def deal(num)
        num.times do |card|
          @cards.shift.output_card
        end
    end
  
end
  
  deck=Deck.new
  52.times {deck.deal(1)}