class Tenant
  attr_accessor :name, :apartment_num

  def initialize(new_name,apartment_num)
    @name = new_name
    @apartment_num = apartment_num
  end

  def new_tenant
  end

  def show_all_tenants
  end

end
