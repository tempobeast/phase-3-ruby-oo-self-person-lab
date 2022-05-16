

class Person 
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def bank_account=(bank_account)
        @bank_account = bank_account
    end

    def happiness=(value)
         @happiness = one_to_ten(value)
    end

    def hygiene=(value)
        @hygiene = one_to_ten(value)
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(amount)
        @bank_account = @bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)
        if topic == "politics"
            person.happiness=(person.happiness - 2)
            self.happiness=(self.happiness - 2)
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            person.happiness=(person.happiness + 1)
            self.happiness=(self.happiness + 1)
            'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end

    end

    def one_to_ten(value)
        if value >= 0 && value <= 10 
            value
         elsif value < 0
             0
         else 
            10
         end
    end

end
