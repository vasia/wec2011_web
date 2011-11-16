class AddEverisToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :everis_w, :integer
  end
end
