class AddProjectToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :project, index: true
  end
end
