describe Membership, type: :model do
  it { should belong_to :user }
  it { should belong_to :team }
end
