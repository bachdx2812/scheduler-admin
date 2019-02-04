# == Schema Information
#
# Table name: salon_schedules
#
#  id         :bigint(8)        not null, primary key
#  salon_id   :bigint(8)
#  user_id    :bigint(8)
#  start_time :datetime
#  end_time   :datetime
#  created_at :datetime
#  updated_at :datetime
#

class SalonSchedule < ApplicationRecord

end
