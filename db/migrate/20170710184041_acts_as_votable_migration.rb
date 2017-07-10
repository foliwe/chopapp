class ActsAsVotableMigration < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|

      t.references :votable, :polymorphic => true
      t.references :voter, :polymorphic => true

      t.boolean :vote_flag
      t.string :vote_scope
      t.integer :vote_weight
      add_column :recipes, :cached_votes_total, :integer, :default => 0
      add_column :recipes, :cached_votes_score, :integer, :default => 0
      add_column :recipes, :cached_votes_up, :integer, :default => 0
      add_index  :recipes, :cached_votes_total
      add_index  :recipes, :cached_votes_score
      add_index  :recipes, :cached_votes_up
      t.timestamps
    end

    if ActiveRecord::VERSION::MAJOR < 4
      add_index :votes, [:votable_id, :votable_type]
      add_index :votes, [:voter_id, :voter_type]
    end

    add_index :votes, [:voter_id, :voter_type, :vote_scope]
    add_index :votes, [:votable_id, :votable_type, :vote_scope]
  end

  def self.down
    drop_table :votes
  end
end
