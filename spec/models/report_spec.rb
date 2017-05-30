describe Report, type: :model do
  it { should belong_to :user }
  it { should have_many :tasks }
  it { should have_many :team_reports }
  it { should have_many(:teams).through(:team_reports) }
end
