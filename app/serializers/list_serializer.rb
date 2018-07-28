class ListSerializer < ActiveModel::Serializer
  attributes :id, :user, :title, :private, :created_at

  def user
    object.user
  end

  def title
    object.title
  end

  def private
    object.private
  end

  def created_at
    object.created_at
  end 
end
