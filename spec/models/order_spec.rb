require 'spec_helper'

describe Order do
  before { @order = Fabricate(:order) }
    subject { @order }

    it { should validate_presence_of(:sandwich) } 
    it { should validate_presence_of(:user_id) } 
    it { should validate_numericality_of(:user_id) }
    it { should belong_to(:user) }

    end
    
end
