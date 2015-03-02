# encoding: utf-8

module Tracker
  module UseCase
    describe AddPeerInformation do

      let(:peer_information) do
        {
          info_hash: 'w \xBC\xDF\u0099\xA9\xD7\n\u0016\xAB\xC63\xC3\n\xED-y\xC6\xE4',
          peer_id: '-UM1870-[\x94(\xBA=\u00038\xF0|;=\xE9',
          port: "24874",
          uploaded: "0",
          downloaded: "0",
          left: "0",
          corrupt: "0",
          key: "ACF63301",
          event: "started",
          numwant: "200",
          compact: "1",
          no_peer_id: "1",
          ipv6: "fe80::8638:35ff:fe65:9c5e"
        }
      end

      describe "#execute" do
        subject { AddPeerInformation.new peer_information }
        let(:peer) { double "Peer" }

        context "when peer_id does not exists in DB" do
          before do
            allow(PeerRepository).to receive(:find_by_external_peer_id).and_return nil
          end

          it "persists a new peer instance" do
            expect(Peer).to receive(:build).and_return peer
            expect(PeerRepository).to receive(:add_peer).with(peer)
            subject.execute
          end
        end

        context "when peer_id exists in DB" do
          it "updates peer instance" do
            expect(PeerRepository).to receive(:find_by_external_peer_id).and_return peer
            expect(peer).to receive(:update)
            subject.execute
          end
        end
      end
    end
  end
end
