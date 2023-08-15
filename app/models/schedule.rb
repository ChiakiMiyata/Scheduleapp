class Schedule < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20}
  validates :startdate, presence: true
  validates :enddate, presence: true, comparison: { greater_than: :startdate }
  validates :schedulememo, length: {maximum: 500}
end
