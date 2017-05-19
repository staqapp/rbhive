#
# Autogenerated by Thrift Compiler (0.9.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require_relative 'thrift_hive_metastore'
require_relative 'hive_service_types'

module Hive
  module Thrift
    module ThriftHive
      class Client < ::ThriftHiveMetastore::Client
        include ::Thrift::Client

        def execute(query)
          send_execute(query)
          recv_execute()
        end

        def send_execute(query)
          send_message('execute', Execute_args, :query => query)
        end

        def recv_execute()
          result = receive_message(Execute_result)
          raise result.ex unless result.ex.nil?
          return
        end

        def fetchOne()
          send_fetchOne()
          return recv_fetchOne()
        end

        def send_fetchOne()
          send_message('fetchOne', FetchOne_args)
        end

        def recv_fetchOne()
          result = receive_message(FetchOne_result)
          return result.success unless result.success.nil?
          raise result.ex unless result.ex.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'fetchOne failed: unknown result')
        end

        def fetchN(numRows)
          send_fetchN(numRows)
          return recv_fetchN()
        end

        def send_fetchN(numRows)
          send_message('fetchN', FetchN_args, :numRows => numRows)
        end

        def recv_fetchN()
          result = receive_message(FetchN_result)
          return result.success unless result.success.nil?
          raise result.ex unless result.ex.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'fetchN failed: unknown result')
        end

        def fetchAll()
          send_fetchAll()
          return recv_fetchAll()
        end

        def send_fetchAll()
          send_message('fetchAll', FetchAll_args)
        end

        def recv_fetchAll()
          result = receive_message(FetchAll_result)
          return result.success unless result.success.nil?
          raise result.ex unless result.ex.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'fetchAll failed: unknown result')
        end

        def getSchema()
          send_getSchema()
          return recv_getSchema()
        end

        def send_getSchema()
          send_message('getSchema', GetSchema_args)
        end

        def recv_getSchema()
          result = receive_message(GetSchema_result)
          return result.success unless result.success.nil?
          raise result.ex unless result.ex.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'getSchema failed: unknown result')
        end

        def getThriftSchema()
          send_getThriftSchema()
          return recv_getThriftSchema()
        end

        def send_getThriftSchema()
          send_message('getThriftSchema', GetThriftSchema_args)
        end

        def recv_getThriftSchema()
          result = receive_message(GetThriftSchema_result)
          return result.success unless result.success.nil?
          raise result.ex unless result.ex.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'getThriftSchema failed: unknown result')
        end

        def getClusterStatus()
          send_getClusterStatus()
          return recv_getClusterStatus()
        end

        def send_getClusterStatus()
          send_message('getClusterStatus', GetClusterStatus_args)
        end

        def recv_getClusterStatus()
          result = receive_message(GetClusterStatus_result)
          return result.success unless result.success.nil?
          raise result.ex unless result.ex.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'getClusterStatus failed: unknown result')
        end

        def getQueryPlan()
          send_getQueryPlan()
          return recv_getQueryPlan()
        end

        def send_getQueryPlan()
          send_message('getQueryPlan', GetQueryPlan_args)
        end

        def recv_getQueryPlan()
          result = receive_message(GetQueryPlan_result)
          return result.success unless result.success.nil?
          raise result.ex unless result.ex.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'getQueryPlan failed: unknown result')
        end

      end

      class Processor < ::ThriftHiveMetastore::Processor
        include ::Thrift::Processor

        def process_execute(seqid, iprot, oprot)
          args = read_args(iprot, Execute_args)
          result = Execute_result.new()
          begin
            @handler.execute(args.query)
          rescue ::Hive::Thrift::HiveServerException => ex
            result.ex = ex
          end
          write_result(result, oprot, 'execute', seqid)
        end

        def process_fetchOne(seqid, iprot, oprot)
          args = read_args(iprot, FetchOne_args)
          result = FetchOne_result.new()
          begin
            result.success = @handler.fetchOne()
          rescue ::Hive::Thrift::HiveServerException => ex
            result.ex = ex
          end
          write_result(result, oprot, 'fetchOne', seqid)
        end

        def process_fetchN(seqid, iprot, oprot)
          args = read_args(iprot, FetchN_args)
          result = FetchN_result.new()
          begin
            result.success = @handler.fetchN(args.numRows)
          rescue ::Hive::Thrift::HiveServerException => ex
            result.ex = ex
          end
          write_result(result, oprot, 'fetchN', seqid)
        end

        def process_fetchAll(seqid, iprot, oprot)
          args = read_args(iprot, FetchAll_args)
          result = FetchAll_result.new()
          begin
            result.success = @handler.fetchAll()
          rescue ::Hive::Thrift::HiveServerException => ex
            result.ex = ex
          end
          write_result(result, oprot, 'fetchAll', seqid)
        end

        def process_getSchema(seqid, iprot, oprot)
          args = read_args(iprot, GetSchema_args)
          result = GetSchema_result.new()
          begin
            result.success = @handler.getSchema()
          rescue ::Hive::Thrift::HiveServerException => ex
            result.ex = ex
          end
          write_result(result, oprot, 'getSchema', seqid)
        end

        def process_getThriftSchema(seqid, iprot, oprot)
          args = read_args(iprot, GetThriftSchema_args)
          result = GetThriftSchema_result.new()
          begin
            result.success = @handler.getThriftSchema()
          rescue ::Hive::Thrift::HiveServerException => ex
            result.ex = ex
          end
          write_result(result, oprot, 'getThriftSchema', seqid)
        end

        def process_getClusterStatus(seqid, iprot, oprot)
          args = read_args(iprot, GetClusterStatus_args)
          result = GetClusterStatus_result.new()
          begin
            result.success = @handler.getClusterStatus()
          rescue ::Hive::Thrift::HiveServerException => ex
            result.ex = ex
          end
          write_result(result, oprot, 'getClusterStatus', seqid)
        end

        def process_getQueryPlan(seqid, iprot, oprot)
          args = read_args(iprot, GetQueryPlan_args)
          result = GetQueryPlan_result.new()
          begin
            result.success = @handler.getQueryPlan()
          rescue ::Hive::Thrift::HiveServerException => ex
            result.ex = ex
          end
          write_result(result, oprot, 'getQueryPlan', seqid)
        end

      end

      # HELPER FUNCTIONS AND STRUCTURES

      class Execute_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        QUERY = 1

        FIELDS = {
          QUERY => {:type => ::Thrift::Types::STRING, :name => 'query'}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Execute_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        EX = 1

        FIELDS = {
          EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => ::Hive::Thrift::HiveServerException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class FetchOne_args
        include ::Thrift::Struct, ::Thrift::Struct_Union

        FIELDS = {

        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class FetchOne_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        EX = 1

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'},
          EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => ::Hive::Thrift::HiveServerException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class FetchN_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        NUMROWS = 1

        FIELDS = {
          NUMROWS => {:type => ::Thrift::Types::I32, :name => 'numRows'}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class FetchN_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        EX = 1

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRING}},
          EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => ::Hive::Thrift::HiveServerException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class FetchAll_args
        include ::Thrift::Struct, ::Thrift::Struct_Union

        FIELDS = {

        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class FetchAll_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        EX = 1

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRING}},
          EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => ::Hive::Thrift::HiveServerException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetSchema_args
        include ::Thrift::Struct, ::Thrift::Struct_Union

        FIELDS = {

        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetSchema_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        EX = 1

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => HiveMetaStoreTypes::Schema},
          EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => ::Hive::Thrift::HiveServerException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetThriftSchema_args
        include ::Thrift::Struct, ::Thrift::Struct_Union

        FIELDS = {

        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetThriftSchema_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        EX = 1

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => HiveMetaStoreTypes::Schema},
          EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => ::Hive::Thrift::HiveServerException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetClusterStatus_args
        include ::Thrift::Struct, ::Thrift::Struct_Union

        FIELDS = {

        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetClusterStatus_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        EX = 1

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Hive::Thrift::HiveClusterStatus},
          EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => ::Hive::Thrift::HiveServerException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetQueryPlan_args
        include ::Thrift::Struct, ::Thrift::Struct_Union

        FIELDS = {

        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetQueryPlan_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        EX = 1

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Hive::Thrift::QueryPlan},
          EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => ::Hive::Thrift::HiveServerException}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

    end

  end
end
