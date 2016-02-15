class MailingList < ActiveRecord::Base

  has_many :mailing_list_contacts
  has_many :contacts, through: :mailing_list_contacts, source: :contact

end
