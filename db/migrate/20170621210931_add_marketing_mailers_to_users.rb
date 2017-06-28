class AddMarketingMailersToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :marketing_mailer, :integer
  end
end
