class CreateJunkies < ActiveRecord::Migration[6.0]
  def change
    create_table :junkies, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :name
      t.string :job

      t.timestamps
    end
  end
end
