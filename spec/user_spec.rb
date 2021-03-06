describe User, type: :model do
  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username }

  it { should have_many :memberships }
  it { should have_many(:teams).through(:memberships) }
  it { should have_many :tasks }
  it { should have_many :reports }
end
