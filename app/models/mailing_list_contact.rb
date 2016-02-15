class MailingListContact < ActiveRecord::Base

  belongs_to :contact
  belongs_to :mailing_list

end
