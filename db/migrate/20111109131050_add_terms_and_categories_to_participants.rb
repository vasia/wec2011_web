class AddTermsAndCategoriesToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :terms, :integer
    add_column :participants, :agbar_cs, :integer
    add_column :participants, :tmb_cs, :integer
    add_column :participants, :henkel_cs, :integer
    add_column :participants, :accenture_w, :integer
    add_column :participants, :danone_w, :integer
  end
end
