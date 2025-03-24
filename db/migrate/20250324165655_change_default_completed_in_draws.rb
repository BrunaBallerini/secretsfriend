# frozen_string_literal: true

class ChangeDefaultCompletedInDraws < ActiveRecord::Migration[7.1] # rubocop:disable Style/Documentation
  def change
    change_column_default :draws, :completed, false
    change_column_null :draws, :completed, false, false
  end
end
