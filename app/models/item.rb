class Item < ApplicationRecord
    belongs_to :user

    validates :item_name, presence: true

    validates :price, numericality: {integer_only: true, greater_than: -1}

    validates :description, presence: true
end
