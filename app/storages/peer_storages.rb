module Tracker
  class PeerStorage
    include Mongoid::Document

    field :info_hash, type: String
    field :external_peer_id, type: String
    field :downloaded, type: Integer
    field :uploaded, type: Integer
    field :left, type: Integer
  end
end
