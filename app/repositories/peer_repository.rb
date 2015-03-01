module Tracker
  class PeerRepository
    def add_peer(peer)
      storage = peer.storage_instance
      if storage.present?
        storage.save
      end
    end

    def find_by_external_peer_id(external_peer_id)
      storage = PeerStorage.find_by(external_peer_id: external_peer_id)
      Peer.new storage
    end
  end
end
