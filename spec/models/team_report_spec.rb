describe TeamReport, type: :model do
  it { should belong_to :team }
  it { should belong_to :report }
end
