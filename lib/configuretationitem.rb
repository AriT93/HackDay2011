class Configurationitem
  include   DataMapper::Resource

  property :id,       Serial
  property :name,     String
  property :ddmid,    String


  validates_presence_of  :number

end
