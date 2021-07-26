class OpenMic
  attr_reader :location,
              :date,
              :performers

  def initialize(info)
    @location   = info[:location]
    @date       = info[:date]
    @performers = []
  end

  def welcome(user)
    @performers.push(user)
  end

  def repeated_jokes?
    joke_hash = Hash.new(0)
    @performers.each do |performer|
      performer.jokes.each do |joke|
        joke_hash[joke.setup] += 1
      end
    end
    joke_hash.any? { |key, value| value > 1}
  end
end
