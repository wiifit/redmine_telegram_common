class CreateTelegramAccounts < ActiveRecord::Migration
  def up
    create_table :telegram_accounts do |t|
      t.integer :telegram_id, index: true
      t.string :username
      t.string :first_name
      t.string :last_name
      t.belongs_to :user, foreign_key: true
      t.boolean :active, default: true, null: false
      t.string :token
    end
  end
end
