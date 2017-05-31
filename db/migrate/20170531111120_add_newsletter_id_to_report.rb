class AddNewsletterIdToReport < ActiveRecord::Migration[5.1]
  def change
    add_column :reports, :newsletter_id, :integer
    add_index :reports, :newsletter_id
  end
end
