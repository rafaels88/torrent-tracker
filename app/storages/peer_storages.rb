module Tracker
  class PeerStorage
    include Mongoid::Document

    field :external_peer_id, type: String
  end
end
