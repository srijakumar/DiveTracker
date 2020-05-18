class LogSerializer < ActiveModel::Serializer
  attributes :id, :location, :current, :visibility, :depth, :dive
  def dive
    {dive_id: self.object.day.id,
    dive_title: self.object.day.title}
  end
end
