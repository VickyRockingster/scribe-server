# frozen_string_literal: true

class Entry < ApplicationRecord
  belongs_to :user
  validates :title, :text, :user, presence: true
end
