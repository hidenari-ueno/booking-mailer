class CreateMails < ActiveRecord::Migration[5.1]
  def change
    create_table :mails do |t|
      t.string :title, null:false, comment:"件名"
      t.text :body, null:false, comment:"本文"
      t.text  :sammary, null:false, comment:"概要"
      t.datetime  :post_date, null:false, comment:"送信日"
      t.references  :sender, null:false,foreign_key:{ to_table: :mail_addresses }, comment:"送信元アドレスID"
      t.references :receiver,null:false,foreign_key:{ to_table: :mail_addresses }, comment:"送信先アドレスID"
      t.timestamps  null:false
    end
  end
end
