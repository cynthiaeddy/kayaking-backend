class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :trip

  def trip
    {trip_id: self.object.trip.id,
      trip_name: self.object.trip.name}
    end




end
