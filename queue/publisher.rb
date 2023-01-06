class Publisher
  class << self
    attr_accessor :publishers
    
    def new(args)
      obj = super(name: args[:name])
      self.append(obj)
      obj
    end

    private

    def append(publisher)
      @publishers ||= []
      @publishers << publisher
    end
  end

  attr_accessor :name

  def initialize(name:)
    @name = name
  end
end