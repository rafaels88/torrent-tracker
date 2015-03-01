require_relative '../spec_helper'

module Tracker
  describe Peer do

    describe "API" do
      it { is_expected.to respond_to :id }
      it { is_expected.to respond_to :info_hash }
      it { is_expected.to respond_to :external_peer_id }
      it { is_expected.to respond_to :downloaded }
      it { is_expected.to respond_to :uploaded }
      it { is_expected.to respond_to :left }
    end

    describe "#storage_instance" do
      let(:peer_storage) { double "PeerStorage" }
      subject { Peer.new peer_storage }

      it "returns storage instance related to model" do
        expect(subject.storage_instance).to be == peer_storage
      end
    end

    describe "#update" do
      pending "Needs factory girl implementation"
    end
  end
end
