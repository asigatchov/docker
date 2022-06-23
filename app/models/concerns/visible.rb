module Visible
extend ActiveSupport::Concern

VALID_STATUSES = ['для всех', 'для автора', 'черновик']

included do 
  validates :status, inclusion: { in: VALID_STATUSES }
end

class_methods do
  def public_count
    where(status: 'для всех').count
  end
end

  def archived?
    status == 'черновик'
  end
end

