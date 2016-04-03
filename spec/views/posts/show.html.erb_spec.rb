require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :user => nil,
      :project => nil,
      :image_url => "Image Url",
      :music_url => "Music Url",
      :video_url => "Video Url",
      :message => "MyText",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Image Url/)
    expect(rendered).to match(/Music Url/)
    expect(rendered).to match(/Video Url/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
  end
end
