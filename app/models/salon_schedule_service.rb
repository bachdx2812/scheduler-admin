# == Schema Information
#
# Table name: salon_schedule_services
#
#  id                :bigint(8)        not null, primary key
#  salon_service_id  :bigint(8)
#  salon_schedule_id :bigint(8)
#  created_at        :datetime
#  updated_at        :datetime
#

class SalonScheduleService < ApplicationRecord

end
