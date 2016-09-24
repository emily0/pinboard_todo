class ToreadItem < ApplicationRecord
  belongs_to :toread_list

  def completed?
   	!completed_at.blank?
   end
end
