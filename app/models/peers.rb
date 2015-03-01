module Tracker
  class Peer
    extend Forwardable

    def_delegators :@storage, :external_peer_id, :id

    def initialize(storage = PeerStorage.new)
      @storage = storage
    end

    def storage_instance
      @storage
    end
  end
end
