class Tweet < ApplicationRecord
  belongs_to :category, optional: true
end