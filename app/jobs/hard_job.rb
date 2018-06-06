class HardJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.fatal 'Working'
    sleep 5
    client = Redis.new#(url: CONFIG[:redis_connect_url])
    client.set('mykey', 'hello world')
    Rails.logger.fatal client.get('mykey').to_s
    Rails.logger.fatal 'Done'
  end
end
