class CreateSpanishVocabs < ActiveRecord::Migration
  def change
    create_table :spanish_vocabs do |t|
      t.string :wordEnglish
      t.string :wordSpanish
      t.string :example
      t.integer :understandingRanking

      t.timestamps
    end
  end
end
