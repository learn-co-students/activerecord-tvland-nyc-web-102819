
class CreateNetworks < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
  def change
    create_table :networks do |t| #we get a block variable here for the table
      #primary key of :id is created for us!
      t.string :call_letters
      t.integer :channel
    end
  end
end
