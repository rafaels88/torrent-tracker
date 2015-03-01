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

    describe "#find_by_external_peer_id" do
      context "with an external peer id given" do

        let(:external_peer_id) { '-UM1870-[\x94(\xBA=\u00038\xF0|;=\xE9' }
        let(:peer_storage) { double "PeerStorage" }

        it "returns a peer instance relative of the external_peer_id given" do
          expect(PeerStorage).to receive(:find_by).with(external_peer_id: external_peer_id).and_return peer_storage
          peer = subject.find_by_external_peer_id external_peer_id
          expect(peer).to respond_to :id
          expect(peer).to_not respond_to :_id
        end
      end
    end
  end
end
