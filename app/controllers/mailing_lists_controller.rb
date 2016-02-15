class MailingListsController < ApplicationController

  def new
    render locals: { mailing_list: MailingList.new }
  end

  private

  def contacts
    @_contacts ||= Contact.all
  end
  helper_method :contacts

end
