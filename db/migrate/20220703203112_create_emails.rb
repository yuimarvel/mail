class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.text :sender
      t.text :recipient
      t.text :subject
      t.text :body

      t.timestamps
    end
  end
end
