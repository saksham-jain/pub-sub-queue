class Message
  class << self
    attr_accessor :messages

    def new(args)
      obj = super(body: args[:body])
      self.append(obj)
      obj
    end

    private

    def append(message)
      @messages ||= []
      @messages << message 
    end
  end

  attr_accessor :body, :type

  def initialize(body:)
    @body = body
    @type = 'json'
  end
end