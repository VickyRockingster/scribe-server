# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :entries, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
end
