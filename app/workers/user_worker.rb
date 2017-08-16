class UserWorker
  include Sidekiq::Worker

  def perform(user_id)
    sleep 1
    user = User.find(user_id)
    if user.id == 1
      user.role = 0
      user.save
    end
  end
end
