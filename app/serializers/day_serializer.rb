class DaySerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :logs, :marinelives
  def logs
    self.object.logs.map do |log|
      {location: log.location,
        current: log.current,
        visibility: log.visibility,
        depth: log.depth}
    end
  end

  def marinelives
    self.object.marinelives.map do |ml|
      {content: ml.content}
    end
  end
end
