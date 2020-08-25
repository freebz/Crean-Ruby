# No Change Too Small

class Address
  attr_accessor :street, :zip

  def initialize(street, zip)
    @street = street
    @zip = zip
  end
end

a1 = Address.new("123 Street", 12345)
a2 = Address.new("321 Street", nil)

def prep(a_list)
  # remove addresses with no zip
  a_list.reject! { |a| a.zip.nil? }

  # sort addresses by zip
  a_list.sort_by { |a| a.zip }
end

s_list = prep([a1, a2])



class Address
  attr_accessor :street, :zip

  def initialize(street, zip)
    @street = street
    @zip = zip
  end
end

address1 = Address.new("123 Street", 12345)
address2 = Address.new("321 Street", nil)

def prep(addresses)
  # remove addresses with no zip
  addresses.reject! { |address| address.zip.nil? }

  # sort addresses by zip
  addresses.sort_by { |address| address.zip }
end

addresses = prep([address1, address2])



class Address
  attr_accessor :street, :zip

  def initialize(street, zip)
    @street = street
    @zip = zip
  end
end

address1 = Address.new("123 Street", 12345)
address2 = Address.new("321 Street", nil)

def prepare_addresses(addresses)
  # remove addresses with no zip
  addresses.reject! { |address| address.zip.nil? }

  # sort addresses by zip
  addresses.sort_by { |address| address.zip }
end

addresses = prepare_addresses([address1, address2])



class Address
  attr_accessor :street, :zip

  def initialize(street, zip)
    @street = street
    @zip = zip
  end
end

address1 = Address.new("123 Street", 12345)
address2 = Address.new("321 Street", nil)

def prepare_addresses(addresses)
  remove_nil_zips(addresses)
  sort_by_zip(addresses)
end

def remove_nil_zips(addresses)
  addresses.reject! { |address| address.zip.nil? }
end

def sort_by_zip(addresses)
  addresses.sort_by { |address| address.zip }
end

prepare_addresses([address1, address2])



class Address
  attr_accessor :street, :zip

  def initialize(street, zip)
    @street = street
    @zip = zip
  end
end

class AddressCleaner
  def initialize(addresses)
    @addresses = addresses
  end

  def clean
    remove_nil_zips
    sort_by_zip
  end

  private

  def remove_nil_zips
    @addresses.reject! { |address| address.zip.nil? }
  end

  def sort_by_zip
    @addresses.sort_by { |address| address.zip }
  end
end

address1 = Address.new("123 Street", 12345)
address2 = Address.new("321 Street", nil)

address_cleaner = AddressCleaner.new([address1, address2])
addresses = address_cleaner.clean
