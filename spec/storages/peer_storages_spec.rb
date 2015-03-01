# encoding: utf-8

module Tracker
  describe PeerStorage do
    describe "API" do
      it { is_expected.to respond_to :id }
      it { is_expected.to respond_to :external_peer_id }
    end
  end
end
