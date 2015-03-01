module Tracker
  class PeerRepository
    def add_peer(peer)
      storage = peer.storage_instance
      if storage.present?
        storage.save
      end
    end
  end
end
