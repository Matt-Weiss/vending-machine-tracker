class AddMachineSnacksToMachine < ActiveRecord::Migration[5.1]
  def change
    add_reference :machines, :machine_snacks, foreign_key: true
  end
end
