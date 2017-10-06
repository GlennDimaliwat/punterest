# == Schema Information
#
# Table name: puns
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  content    :text
#  context    :text
#  title      :string
#  audience   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Pun, type: :model do
  
  it "should have a title" do
    user = User.new
    p = Pun.new(user: user, content: 'Test Content', context: 'Test Context', title: 'Test Title', audience: 'Test Audience')
    expect(p).to be_valid
  end

  it "should disallow blank title" do
    user = User.new
    p = Pun.new(user: user, content: 'Test Content', context: 'Test Context', audience: 'Test Audience')
    expect(p).to be_invalid
  end

  it "should disallow invalid bases" do
  end

  it "should disallow missing required attributes" do
  end
  
end
