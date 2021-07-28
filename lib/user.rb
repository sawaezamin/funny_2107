class User
  attr_reader :name,
              :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes.push(joke)
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def joke_by_id(id)
    joke_id = nil
    @jokes.each do |joke|
      if joke.id == id
        joke_id = joke
      end
    end
    joke_id
  end
end
