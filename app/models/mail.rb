class Mail < ApplicationRecord
  belongs_to :sender, class_name:"Mail_address",foreign_key:"sender"
  belongs_to :receiver, class_name:"Mail_address",foreign_key:"receiver"
end