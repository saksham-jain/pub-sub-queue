class Queu
  class << self
    attr_accessor :queues
    
    def new(args)
      obj = super(publisher: args[:publisher])
      self.append(obj)
      obj
    end

    private

    def append(queue)
      @queues ||= []
      @queues << queue
    end
  end

  attr_accessor :messages, :subscribers, :publisher

  def initialize(publisher:)
    @messages = []
    @subscribers = []
    @publisher = publisher
  end

  def enqueue(message:)
    messages << message
  end

  def dequeue(batch = 1)

  end

  def subscribe(subscriber:)
    @subscribers << subscriber
  end

  def unsubscribe(subscriber:)
    @subscribers.reject! { |sub| sub == subscriber }
  end
end