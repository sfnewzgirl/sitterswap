class CreatePeople < ActiveRecord::Migration[5.0]

  # initializes database with required tables and index for start one

  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :city

      t.timestamps

      t.index [:email], name: "index_people_on_email"
    end

    create_table :families do |t|
      t.string :family_name

      t.timestamps

      t.index [:family_name], name: "index_families_on_family_name"
    end

    create_table :login_details do |t|
      t.string :email
      t.string :password_digest
      t.references :person, foreign_key: true

      t.timestamps

      t.index [:email, :password_digest], name: "index_login_details_on_email_and_password_digest"
      t.index [:email], name: "index_login_details_on_email"

    end

    create_table :family_people do |t|
      t.references :person, foreign_key: true
      t.references :family, foreign_key: true
      t.integer :role
    end
  end
end
