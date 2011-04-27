#Workgroups class
class Workgroup
  include  DataMapper::Resource

  property :id, Serial
  property :workgroup_number, String

  has n, :dm_user

  before :valid?, :check_workgroup

  validates_presence_of  :workgroup_number

  def check_workgroup
   self.workgroup_number ||= 1
  end
end
