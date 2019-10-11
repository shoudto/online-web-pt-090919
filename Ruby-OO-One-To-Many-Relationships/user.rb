class User

    attr_reader :username
  
    def initialize(username)
      @username = username
    #   @tweets = [] #=> This is how we designed our class originally.
                        # Each user carries around an array of its tweet instances.
                        # What if we removed a Tweet from the Tweets array with Tweet.all.pop?
                        # Would @tweets reflect the change we made in the Tweet @@all array?
                        # We are running into the problem of having more than a single source of truth (SSoT) for keeping track of what data we have and don't have.
    end

    def tweets
        # @tweets
        Tweet.all.select {|tweet| tweet.user == self} #=> We refactored this method to reflect a SSoT.
        # Rather than looking inside of each user instance to see what tweets it has,
        # we give the responsibility of tracking ownership of the tweets to the Tweet class, and we ask it for the associated tweets.
    end
  
    def post_tweet(message)
      # create a new tweet
      tweet = Tweet.new(message, self)
      # add that tweet to this user's collection of tweets
      # add_tweet(tweet) #=> We originally shoveled the newly created tweet to the user's @tweets array.
                            # Because our Tweet class is already associating a user to it on line 23 
                            # and we are using the Tweet class as the SSoT for our tweets,
                            # we no longer need the below method.
    end
  
    # def add_tweet(tweet)
    #     @tweets << tweet
    # end
  
  end