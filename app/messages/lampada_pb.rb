# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: lampada.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("lampada.proto", :syntax => :proto3) do
    add_message "Lampada" do
      optional :comando, :enum, 1, "Lampada.Comando"
      optional :estado, :bool, 2
    end
    add_enum "Lampada.Comando" do
      value :NULL, 0
      value :SETESTADO, 1
      value :GETESTADO, 2
      value :REQ, 3
    end
  end
end

Lampada = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Lampada").msgclass
Lampada::Comando = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Lampada.Comando").enummodule
