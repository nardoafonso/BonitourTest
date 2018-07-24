class Company < ApplicationRecord
    has_many :attractives,  dependent: :destroy
    validates :cnpj, presence: true,
                     length: { minimum: 14, maximum: 14 }
    validates :social_name, presence: true
    validates :name, presence: true
    validates :email, presence: true
end
