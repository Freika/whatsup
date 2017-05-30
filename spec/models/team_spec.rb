describe Team, type: :model do
  it { should have_many :memberships }
  it { should have_many(:users).through(:memberships) }
  it { should have_many :team_reports }
  it { should have_many(:reports).through(:team_reports) }
end
