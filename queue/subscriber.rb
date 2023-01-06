class Subscriber
  class << self
    attr_accessor :subscribers
    
    def new(args)
      obj = super(name: args[:name])
      self.append(obj)
      obj
    end

    private

    def append(subscribers)
      @subscribers ||= []
      @subscribers << subscribers
    end
  end

  attr_accessor :name

  def initialize(name:)
    @name = name
  end
end