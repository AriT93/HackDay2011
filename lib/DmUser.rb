#Extensions to User(DmUser) class
class DmUser
  property :first_name, String
  property :last_name, String
  property :workgroup, Integer

  belongs_to :workgroup, :required => false

  before :valid?, :check_workgroup

  validates_presence_of :workgroup

  def check_workgroup
    self.workgroup ||= 1
  end

end
