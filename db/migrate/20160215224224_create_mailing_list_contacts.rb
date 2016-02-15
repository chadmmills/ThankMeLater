class CreateMailingListContacts < ActiveRecord::Migration
  def change
    create_table :mailing_list_contacts do |t|
      t.references :contact, index: true, foreign_key: true, null: false
      t.references :mailing_list, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
