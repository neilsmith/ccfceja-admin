class AddTwitterHandleToTeams < ActiveRecord::Migration[7.0]
  def change
    add_column :teams, :twitter_handle, :string
  end
end
