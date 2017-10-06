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

class Pun < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  validates :context, presence: true
  validates :title, presence: true
  validates :audience, presence: true
end
