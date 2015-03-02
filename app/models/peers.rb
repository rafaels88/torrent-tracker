module Tracker
  class Peer
    extend Forwardable

    def_delegators :@storage, :id, :info_hash, :external_peer_id,
                              :downloaded, :uploaded, :left

    def initialize(storage = PeerStorage.new)
      @storage = storage
    end

    def storage_instance
      @storage
    end

    def update(**attributes)
      attrs = filter_permitted_update_attributes(attributes)
      @storage.updade_attributes(**attrs)
    end

    private

    def filter_permitted_update_attributes(attrs)
      permitted_attrs = [:downloaded, :uploaded, :left]
      attrs.select { |k, v| permitted_attrs.include? k }
    end
  end
end
