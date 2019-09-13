# frozen_string_literal: true

class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :created_at, :updated_at
end
