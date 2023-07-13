class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def hygiene=(value)
        @hygiene = [value, 0, 10].sort[1]
    end

    def happiness=(value)
        @happiness = [value, 0, 10].sort[1]
    end

    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(amount) 
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        self.hygiene = 10 if self.hygiene > 10
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        self.happiness = 10 if self.happiness > 10
        self.hygiene = 0 if self.hygiene < 0
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness  += 3 
        friend.happiness += 3
        self.happiness = 10 if self.happiness > 10
        friend.happiness = 10 if friend.happiness > 10
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            friend.happiness = 0 if friend.happiness < 0
            self.happiness = 0 if self.happiness < 0
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            friend.happiness = 10 if friend.happiness > 10
            self.happiness = 10 if self.happiness > 10
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

