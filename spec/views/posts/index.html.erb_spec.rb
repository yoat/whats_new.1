require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :user => nil,
        :project => nil,
        :image_url => "Image Url",
        :music_url => "Music Url",
        :video_url => "Video Url",
        :message => "MyText",
        :title => "Title"
      ),
      Post.create!(
        :user => nil,
        :project => nil,
        :image_url => "Image Url",
        :music_url => "Music Url",
        :video_url => "Video Url",
        :message => "MyText",
        :title => "Title"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Music Url".to_s, :count => 2
    assert_select "tr>td", :text => "Video Url".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
