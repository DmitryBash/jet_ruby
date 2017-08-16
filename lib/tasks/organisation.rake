namespace :organisation do
  desc 'Update Organisation fields'
  task organisation_update: :environment do
    Organisation.update_all(today_date: Date.today, today_menu_active: false)
    Organisation.where(id: 1).update(today_date: Date.today, today_menu_active: true)
  end
end
