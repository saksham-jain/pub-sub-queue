require_relative 'queue/message'
require_relative 'queue/queue'
require_relative 'queue/publisher'
require_relative 'queue/subscriber'

publisher = Publisher.new(name: 'Abc')
puts "Publisher: #{publisher.inspect}"

subscriber1 = Subscriber.new(name: 'subscriber-1')
puts "Subscriber1: #{subscriber1.inspect}"

subscriber2 = Subscriber.new(name: 'subscriber-2')
puts "Subscriber2: #{subscriber2.inspect}"

subscriber3 = Subscriber.new(name: 'subscriber-3')
puts "Subscriber3: #{subscriber3.inspect}"

queue1 = Queu.new(publisher: publisher)
puts "Queue1: #{queue1.inspect}"

queue2 = Queu.new(publisher: publisher)
puts "Queue2 #{queue2.inspect}"

queue1.subscribe(subscriber: subscriber1)
queue1.subscribe(subscriber: subscriber2)
puts "Queue1 subscribers: #{queue1.subscribers}"

queue2.subscribe(subscriber: subscriber3)
puts "Queue2 subscribers: #{queue2.subscribers}"
