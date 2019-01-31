# == Schema Information
#
# Table name: salon_services
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  desc       :text(65535)
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime
#  updated_at :datetime
#

class SalonService < ApplicationRecord

end
