# == Schema Information
#
# Table name: salon_users
#
#  id         :bigint(8)        not null, primary key
#  salon_id   :bigint(8)
#  user_id    :bigint(8)
#  created_at :datetime
#  updated_at :datetime
#

class SalonUser < ApplicationRecord

end
