# encoding: utf-8

module Tracker
  describe PeerStorage do
    describe "API" do
      it { is_expected.to respond_to :id }
      it { is_expected.to respond_to :info_hash }
      it { is_expected.to respond_to :external_peer_id }
      it { is_expected.to respond_to :downloaded }
      it { is_expected.to respond_to :uploaded }
      it { is_expected.to respond_to :left }
    end
  end
end
