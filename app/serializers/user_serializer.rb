class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :company, :created_at, :updated_at
  has_one :company, serializer: OtherSerializer

  def created_at
    object.created_at.strftime('%d/%m/%Y %H:%M')
  end

  def updated_at
    object.updated_at.strftime('%d/%m/%Y %H:%M')
  end
end
