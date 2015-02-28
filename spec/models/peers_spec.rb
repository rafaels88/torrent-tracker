require_relative '../spec_helper'

module Tracker
  describe Peer do
    it { is_expected.to respond_to :id  }
  end
end
