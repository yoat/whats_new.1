require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :user => nil,
      :project => nil,
      :image_url => "MyString",
      :music_url => "MyString",
      :video_url => "MyString",
      :message => "MyText",
      :title => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_user_id[name=?]", "post[user_id]"

      assert_select "input#post_project_id[name=?]", "post[project_id]"

      assert_select "input#post_image_url[name=?]", "post[image_url]"

      assert_select "input#post_music_url[name=?]", "post[music_url]"

      assert_select "input#post_video_url[name=?]", "post[video_url]"

      assert_select "textarea#post_message[name=?]", "post[message]"

      assert_select "input#post_title[name=?]", "post[title]"
    end
  end
end
