describe Task, type: :model do
  it { should belong_to :user }
  it { should validate_presence_of :content }
  it { should validate_presence_of :estimated_hours }
  it { should validate_presence_of :spent_hours }
  it { should validate_numericality_of :estimated_hours }
  it { should validate_numericality_of :spent_hours }

  it do
    should define_enum_for(:status)
      .with [:todo, :done, :backlog]
  end
end
