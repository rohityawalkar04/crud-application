class Player < ApplicationRecord
    # validates :first_name, :last_name, presence: true

    validate :first_name_length

    def first_name_length
        errors.add(:first_name, "should be greater than 5 characters") if self.first_name.length < 5
    end
end