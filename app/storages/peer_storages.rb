module Tracker
  class PeerStorage
    include Mongoid::Document

    field :id, type: String
  end
end
