require_relative 'lib/em-redis'

require 'logger'

logger = Logger.new(STDOUT)

EM.run do

  redis = EM::Protocols::Redis.connect(:logger => logger)

  EM.add_periodic_timer(1) do
    redis.set('aaa', rand(1000)) do |r|
      puts "SET: #{r}"
    end

    redis.get('aaa') do |r|
      puts "GET: #{r}"
    end
  end

end