# frozen_string_literal: true

class AddCompletedToDraws < ActiveRecord::Migration[7.1] # rubocop:disable Style/Documentation
  def change
    add_column :draws, :completed, :boolean, default: false, null: false
  end
end
