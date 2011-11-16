class AddTeamDesignToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :team_design, :integer
  end
end
