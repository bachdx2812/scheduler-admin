# == Schema Information
#
# Table name: salon_request_services
#
#  id                        :bigint(8)        not null, primary key
#  salon_schedule_request_id :bigint(8)
#  salon_service_id          :bigint(8)
#  created_at                :datetime
#  updated_at                :datetime
#

class SalonRequestService < ApplicationRecord

end
