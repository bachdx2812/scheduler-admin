# == Schema Information
#
# Table name: salons
#
#  id           :bigint(8)        not null, primary key
#  name         :string(255)
#  desc         :text(65535)
#  phone_number :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Salon < ApplicationRecord
end
