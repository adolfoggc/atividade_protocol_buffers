# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: addressbook.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("addressbook.proto", :syntax => :proto2) do
    add_message "tutorial.Person" do
      required :name, :string, 1
      required :id, :int32, 2
      optional :email, :string, 3
      repeated :phones, :message, 4, "tutorial.Person.PhoneNumber"
    end
    add_message "tutorial.Person.PhoneNumber" do
      required :number, :string, 1
      optional :type, :enum, 2, "tutorial.Person.PhoneType", default: 1
    end
    add_enum "tutorial.Person.PhoneType" do
      value :MOBILE, 0
      value :HOME, 1
      value :WORK, 2
    end
    add_message "tutorial.AddressBook" do
      repeated :people, :message, 1, "tutorial.Person"
    end
  end
end

module Tutorial
  Person = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tutorial.Person").msgclass
  Person::PhoneNumber = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tutorial.Person.PhoneNumber").msgclass
  Person::PhoneType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tutorial.Person.PhoneType").enummodule
  AddressBook = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("tutorial.AddressBook").msgclass
end
