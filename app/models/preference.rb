class Preference < ApplicationRecord
  belongs_to :user

  validates :notification_delivery_hour, presence: true,
            numericality: { only_integer: true },
            inclusion: {
              in: 0..23,
              message: "value should be between 0 and 23"
            }
end
