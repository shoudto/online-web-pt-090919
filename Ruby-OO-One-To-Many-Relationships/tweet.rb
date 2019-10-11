class Tweet
    attr_reader :message, :user
  
    @@all = []
  
    def initialize(message, user) #=> To instantiate a new Tweet, we need the tweet message (type String) 
                                        # and the user who created the tweet (type User)
      @message = message
      @user = user #=> Our new tweet now knows about the user that it belongs to
  
      @@all << self
    end
  
    def self.all
      @@all
    end

    def username
        # return the username of the tweet's user
        user.username #=> What object are we calling the user method on here?
                        # In other words, what is the 'implicit Self here?'
    end
  end