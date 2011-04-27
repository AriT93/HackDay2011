class Change
  include DataMapper::Resource

  property :id,         Serial
  property :number,     String
  property :scheduled,  DateTime
  property :created_at, DateTime
  property :updated_at, DateTime
  property :assigned_to, String

  has n, :configurationitems, :through => Resource


  before :valid?, :add_changenumber

  validates_presence_of  :number

  def add_changenumber
    self.number ||= "CM#{'0' * (8 - Change.count.to_s.length) + (Change.count + 1).to_s}"
  end
  def change_assign(assignee)
    self.assigned_to = User.find(assignee).first.object_id
  end
end
