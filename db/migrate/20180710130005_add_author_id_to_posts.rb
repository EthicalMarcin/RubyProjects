class AddAuthorIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :author_id, :integer, index: true
    #kolumna, ktora zawiera klucz obcy - dobrze by bylo zeby byla indeksowana
  end
end
