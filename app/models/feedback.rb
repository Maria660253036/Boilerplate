class Feedback < ApplicationRecord
    validates :name, :description, presence: true