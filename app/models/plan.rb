# == Schema Information
#
# Table name: plans
#
#  id                     :integer          not null, primary key
#  bedrooms               :integer
#  sqfoot                 :integer
#  levels                 :string(255)
#  name                   :string(255)
#  half_bath              :string(255)
#  bathrooms              :string(255)
#  living                 :integer
#  suite                  :string(255)
#  dining                 :integer
#  view                   :string(255)
#  garage                 :integer
#  garage_loc             :string(255)
#  width                  :string(255)
#  depth                  :string(255)
#  casita                 :string(255)
#  court                  :string(255)
#  study                  :string(255)
#  style                  :string(255)
#  media_string           :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  drawing_1_file_name    :string(255)
#  drawing_1_content_type :string(255)
#  drawing_1_file_size    :integer
#  drawing_1_updated_at   :datetime
#  drawing_2_file_name    :string(255)
#  drawing_2_content_type :string(255)
#  drawing_2_file_size    :integer
#  drawing_2_updated_at   :datetime
#  elevation_file_name    :string(255)
#  elevation_content_type :string(255)
#  elevation_file_size    :integer
#  elevation_updated_at   :datetime
#

class Plan < ActiveRecord::Base
  attr_accessible :bathrooms, :bedrooms, :drawing_1, :drawing_2, :elevation, :drawing_1_file_name, :drawing_1_content_type, :drawing_1_file_size, :drawing_1_updated_at, :casita, :court, :depth, :dining, :garage, :garage_loc, :half_bath, :levels, :living, :media_string, :name, :sqfoot, :study, :style, :suite, :view, :width
  has_attached_file :drawing_1,  :styles => { :full => ["2400x2400>", :jpg], :preview => ["365x365>", :jpg], :thumb => ["150x150>", :jpg] }
  has_attached_file :drawing_2,  :styles => { :full => ["2400x2400>", :jpg], :preview => ["365x365>", :jpg], :thumb => ["150x150>", :jpg] }
  has_attached_file :elevation,  :styles => { :full => ["2400x2400>", :jpg], :preview => ["365x365>", :jpg], :thumb => ["150x150>", :jpg] }
end
