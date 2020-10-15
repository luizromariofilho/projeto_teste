class OtherSerializer < ActiveModel::Serializer
  attributes :id, :name, :cnpj, :address, :created_at, :updated_at

  def created_at
    object.created_at.strftime('%d/%m/%Y %H:%M')
  end

  def updated_at
    object.updated_at.strftime('%d/%m/%Y %H:%M')
  end
end
