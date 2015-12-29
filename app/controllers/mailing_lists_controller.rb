class MailingListsController < ApplicationController

  def new

  end

  private

  def contacts
    @_contacts ||= Contact.all
  end
  helper_method :contacts

end
