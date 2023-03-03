class CreateShortenedUrl < ActiveRecord::Migration[7.0]
  def change
    create_table :shortened_urls do |t|
      t.string :short_url, null: false
      t.string :long_url, null: false

      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :shortened_urls, :short_url, unique: true
  end
end
