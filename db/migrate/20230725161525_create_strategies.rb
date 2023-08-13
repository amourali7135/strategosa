class CreateStrategies < ActiveRecord::Migration[7.0]
  def change
    create_table :strategies do |t|
      t.text :goal
      t.text :purpose
      t.text :failure_cause
      t.text :grand_strategy
      t.text :endgame
      t.text :failure_prevention_step
      t.text :issue
      t.text :affected_parties
      t.text :needed_parties
      t.integer :cost
      t.text :cost_issues
      t.text :obstacles
      t.text :overcoming_obstacles
      t.references :idea, null: false, foreign_key: true

      t.timestamps
    end
  end
end
