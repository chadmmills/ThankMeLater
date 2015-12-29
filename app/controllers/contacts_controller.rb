class ContactsController < ApplicationController

  def index
  end

  def new
    render locals: { contact: Contact.new }
  end

  def create
    if new_contact.save
      redirect_to root_path
    else
      render :new, locals: { contact: new_contact }
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :address_1, :address_2, :city, :state, :zipcode)
  end

  def new_contact
    @_new_contact ||= Contact.new(contact_params)
  end
  helper_method :new_contact

  def contacts
    @_contacts ||= Contact.all
  end
  helper_method :contacts

end
