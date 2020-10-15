class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :cnpj, :address, :cnpj_with_mask, :created_at, :updated_at

  def cnpj_with_mask
    object.cnpj.rjust(15,'0')
  end

  def created_at
    object.created_at.strftime('%d/%m/%Y %H:%M')
  end

  def updated_at
    object.updated_at.strftime('%d/%m/%Y %H:%M')
  end
end
