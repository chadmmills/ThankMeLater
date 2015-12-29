class Contact < ActiveRecord::Base

  validates :name, presence: true

  def full_address
    "#{address_1} #{address_2}"
  end

end
