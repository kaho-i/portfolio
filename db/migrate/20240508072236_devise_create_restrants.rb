# frozen_string_literal: true

class DeviseCreateRestrants < ActiveRecord::Migration[6.1]
  def change
    create_table :restrants do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at
      t.string :name, null: false #店舗名
      t.string :telephone_number, null: false #店舗電話番号
      t.string :address #店舗住所
      t.boolean :is_open, null: false, default: true #営業状況

      t.timestamps null: false
    end

    add_index :restrants, :email,                unique: true
    add_index :restrants, :reset_password_token, unique: true
    # add_index :restrants, :confirmation_token,   unique: true
    # add_index :restrants, :unlock_token,         unique: true
  end
end
