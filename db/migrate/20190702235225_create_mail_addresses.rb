class CreateMailAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :mail_addresses do |t|
      t.string  :name, null:false, comment:'名前'
      t.string  :adrress, null:false, comment:'アドレス'
      t.timestamps  null:false
    end
  end
end
