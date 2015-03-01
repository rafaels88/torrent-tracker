# encoding: utf-8

module Tracker
  describe PeerRepository do
    describe "#add_peer" do
      context "with a valid peer given" do
        let(:peer_storage){ double "PeerStorage", save: nil }
        let(:peer) { double "Peer", storage_instance: peer_storage }

        it "calls #save of storage instance" do
          expect(peer_storage).to receive(:save)
          subject.add_peer peer
        end
      end
    end
  end
end
