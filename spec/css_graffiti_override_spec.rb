RSpec.describe 'index.html' do
  it 'exists' do
    file = File.exists?("index.html")
    expect(file).to be_truthy, "The index.html file must exist"
  end
end

RSpec.describe 'css/cleanup.css' do
  it 'exists' do
    file = File.exists?("css/cleanup.css")
    expect(file).to be_truthy, "The cleanup.css file must exist"
  end

end

RSpec.describe 'css/paint.css' do
  it 'exists' do
    file = File.exists?("css/paint.css")
    expect(file).to be_truthy, "The paint.css file must exist"
  end

  it 'must be unchanged' do
    size = File.size("css/paint.css")
    expect(size).to eq(1411), "You cannot alter paint.css at all! To reset it use \"git checkout css/paint.css\""
  end
end
