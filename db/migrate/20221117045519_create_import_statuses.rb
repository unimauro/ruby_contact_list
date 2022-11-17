class CreateImportStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :import_statuses do |t|
      t.boolean :name

      t.timestamps
    end
  end
end
