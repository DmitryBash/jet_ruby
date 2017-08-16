class UserObserver < ActiveRecord::Observer
  def after_create(user)
    UserWorker.perform_async(user.id)
  end
end
