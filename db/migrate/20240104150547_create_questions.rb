# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer
      t.string :string
      t.float :tested
      t.float :correct

      t.timestamps
    end
  end
end
