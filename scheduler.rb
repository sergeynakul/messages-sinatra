require 'rufus-scheduler'

scheduler = Rufus::Scheduler::singleton

scheduler.every '1m' do
  @messages = Message.where(destruction: false)
  @messages.each do |message|
    if Time.now - message.created_at > 1.hour
      message.destroy
    end
  end
end