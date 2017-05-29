describe Report, type: :model do
  it { should belong_to :user }
  it { should belong_to :team }
  it { should have_many :tasks }
end
