require 'bundler/setup'
Bundler.require

class Classifier
  attr_accessor :dec_tree, :training_set
  additional_fields = %w(full_name_match
                         full_address_match
                         born_at
                         suffix)
                         #full_name_ngram_distance
                         #full_name_edit_distance)

  KEYS = (additional_fields)

  def initialize
    @dec_tree = setup_tree
    train
    self
  end

  def setup_tree
    obtain_set
    DecisionTree::ID3Tree.new(KEYS, training_set, 0, :continuous)
  end

  def obtain_set
    @training_set = []
    CSV.foreach("lib/training_data/training_data.csv", headers: true) do |row|
      @training_set << row.to_hash.values.map(&:to_f)
    end
  end

  def train
    dec_tree.train
  end

  def predict(modulized)
    dec_tree.predict(modulized)
  end
end
