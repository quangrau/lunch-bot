class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy

  scope :today, -> { where("created_at >= ?", Time.zone.now.beginning_of_day) }
end
