class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :created_at

  def username
    object.username
  end

  def created_at
    object.created_at
  end

  def email
    object.email
  end
end
