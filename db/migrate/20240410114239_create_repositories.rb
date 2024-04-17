# frozen_string_literal: true

class CreateRepositories < ActiveRecord::Migration[7.1]
  def change
    create_table :repositories do |t|
      t.string :name
      t.string :github_id, index: { unique: true }, null: false
      t.string :full_name
      t.string :language
      t.string :clone_url
      t.string :ssh_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end