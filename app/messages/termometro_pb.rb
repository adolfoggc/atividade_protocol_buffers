# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: termometro.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("termometro.proto", :syntax => :proto3) do
    add_message "Termometro" do
      optional :comando, :enum, 1, "Termometro.Comando"
      optional :temp, :int32, 2
    end
    add_enum "Termometro.Comando" do
      value :NULO, 0
      value :GETTEMP, 1
      value :REQ, 2 #adicionado. não tinha no do Luan
    end
  end
end

Termometro = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Termometro").msgclass
Termometro::Comando = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("Termometro.Comando").enummodule
