class Activity < ActiveRecord::Base
  has_many :acdocs, dependent: :destroy, autosave: true

  accepts_nested_attributes_for :acdocs,
                                reject_if: proc { |attributes| attributes['descr'].blank?},
                                allow_destroy: true


  belongs_to :acform
  belongs_to :category

  def valid_hours
    return hours
  end


end
