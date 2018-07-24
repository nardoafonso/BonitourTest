class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :cnpj
      t.string :social_name
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
