# encoding: utf-8

module Tracker
  module UseCase
    class AddPeerInformation
      def initialize(peer_args)
        @peer_args = peer_args
      end

      def execute
        peer = PeerRepository.find_by_external_peer_id @peer_args[:peer_id]
        if peer.nil?
          peer = Peer.build(@peer_args)
          PeerRepository.add_peer peer
        else
          peer.update(@peer_args)
        end
      end
    end
  end
end
