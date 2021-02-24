class Lead < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :phone_number, presence: true, length: { maximum: 11, minimum: 10 }, format: { with: /\d{10}/, message: "bad format" }

    include Messenger
    
    def clean_number
        phone_number = self.phone_number.scan(/\d+/).join
        phone_number[0] == '1' ? phone_number[0] = '' : phone_number
        phone_number unless phone_number.length != 10
    end
end
