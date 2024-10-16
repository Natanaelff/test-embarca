# frozen_string_literal: true

# Migração para criar a tabela de estados.
class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name

      t.timestamps
    end
  end
end
