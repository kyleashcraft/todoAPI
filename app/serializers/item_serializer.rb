class ItemSerializer < ActiveModel::Serializer
  attributes :id, :list, :title, :created_at

  def list
    object.list
  end

  def title
    object.title
  end

  def created_at
    object.created_at
  end
end
