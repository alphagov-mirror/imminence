class DeletePlacesForNonArchivedServices < Mongoid::Migration
  def self.up
    PlaceArchive.delete_all(conditions: { service_slug: { "$nin" => %w[number-plate-supplier motorcycle-approved-training-bodies] } })
  end

  def self.down; end
end
