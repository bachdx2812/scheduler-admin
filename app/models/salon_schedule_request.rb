# == Schema Information
#
# Table name: salon_schedule_requests
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  salon_id   :bigint(8)
#  start_time :datetime
#  created_at :datetime
#  updated_at :datetime
#

class SalonScheduleRequest < ApplicationRecord

end
