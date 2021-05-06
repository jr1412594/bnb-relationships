class CreateDealers < ActiveRecord::Migration[6.0]
  def change
    create_table :dealers, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
