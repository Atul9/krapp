class HardJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.fatal 'Working'
    sleep 5
    Rails.logger.fatal 'Done'
  end
end
