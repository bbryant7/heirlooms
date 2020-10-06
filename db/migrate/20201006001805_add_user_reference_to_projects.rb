class AddUserReferenceToProjects < ActiveRecord::Migration[6.0]
  def change
    add_reference :projects, :user, foreign_key: true, index: true
  end
end
