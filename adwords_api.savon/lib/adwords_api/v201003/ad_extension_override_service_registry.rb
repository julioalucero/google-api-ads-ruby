#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.1 on 2011-09-21 12:01:27.

require 'adwords_api/errors'

module AdwordsApi; module V201003; module AdExtensionOverrideService
  class AdExtensionOverrideServiceRegistry
    ADEXTENSIONOVERRIDESERVICE_METHODS = {:mutate=>{:output=>{:fields=>[{:type=>"AdExtensionOverrideReturnValue", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"mutate_response"}, :input=>[{:type=>"AdExtensionOverrideOperation", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:operations}]}, :get=>{:output=>{:fields=>[{:type=>"AdExtensionOverridePage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_response"}, :input=>[{:type=>"AdExtensionOverrideSelector", :min_occurs=>0, :max_occurs=>1, :name=>:selector}]}}
    ADEXTENSIONOVERRIDESERVICE_TYPES = {:LocationSyncExtension=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:email}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:auth_token}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:icon_media_id}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:should_sync_url}], :base=>"AdExtension"}, :DoubleValue=>{:fields=>[{:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:number}], :base=>"NumberValue"}, :ListReturnValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:list_return_value_type}], :abstract=>true}, :Money=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}], :base=>"ComparableValue"}, :AdExtension=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_extension_type}]}, :Sitelink=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:display_text}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:destination_url}]}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1, :name=>:reason}], :base=>"ApiError"}, :Operation=>{:fields=>[{:type=>"Operator", :min_occurs=>0, :max_occurs=>1, :name=>:operator}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:operation_type}], :abstract=>true}, :OverrideInfo=>{:fields=>[]}, :NumberValue=>{:fields=>[], :base=>"ComparableValue", :abstract=>true}, :SitelinksExtension=>{:fields=>[{:type=>"Sitelink", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:sitelinks}], :base=>"AdExtension"}, :GeoPoint=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:latitude_in_micro_degrees}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:longitude_in_micro_degrees}]}, :AdExtensionOverrideStats=>{:fields=>[], :base=>"Stats"}, :Page=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_num_entries}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:page_type}], :abstract=>true}, :Address=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:street_address}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:street_address2}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:city_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:province_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:province_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:postal_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}]}, :AdExtensionOverride=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:ad_id}, {:type=>"AdExtension", :min_occurs=>0, :max_occurs=>1, :name=>:ad_extension}, {:type=>"OverrideInfo", :min_occurs=>0, :max_occurs=>1, :name=>:override_info}, {:type=>"AdExtensionOverride.Status", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"AdExtensionOverride.ApprovalStatus", :min_occurs=>0, :max_occurs=>1, :name=>:approval_status}, {:type=>"AdExtensionOverrideStats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}]}, :AdExtensionOverrideSelector=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:campaign_ids}, {:type=>"long", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:ad_ids}, {:type=>"long", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:ad_extension_ids}, {:type=>"AdExtensionOverride.Status", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:statuses}, {:type=>"Paging", :min_occurs=>0, :max_occurs=>1, :name=>:paging}]}, :SoapHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:auth_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_customer_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:client_email}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:developer_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:user_agent}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:validate_only}]}, :LocationExtension=>{:fields=>[{:type=>"Address", :min_occurs=>0, :max_occurs=>1, :name=>:address}, {:type=>"GeoPoint", :min_occurs=>0, :max_occurs=>1, :name=>:geo_point}, {:type=>"base64Binary", :min_occurs=>0, :max_occurs=>1, :name=>:encoded_location}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:company_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:phone_number}, {:type=>"LocationExtension.Source", :min_occurs=>0, :max_occurs=>1, :name=>:source}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:icon_media_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:image_media_id}], :base=>"AdExtension"}, :AdExtensionOverridePage=>{:fields=>[{:type=>"AdExtensionOverride", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:entries}], :base=>"Page"}, :AdExtensionOverrideOperation=>{:fields=>[{:type=>"AdExtensionOverride", :min_occurs=>0, :max_occurs=>1, :name=>:operand}], :base=>"Operation"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:operations}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:units}]}, :LongValue=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:number}], :base=>"NumberValue"}, :Stats=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:start_date}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:end_date}, {:type=>"Stats.Network", :min_occurs=>0, :max_occurs=>1, :name=>:network}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:clicks}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:impressions}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:average_position}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:average_cpc}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:average_cpm}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:ctr}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:conversions}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:conversion_rate}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_per_conversion}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:conversions_many_per_click}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:conversion_rate_many_per_click}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_per_conversion_many_per_click}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:stats_type}]}, :Paging=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:number_results}]}, :LocationOverrideInfo=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:radius}, {:type=>"LocationOverrideInfo.RadiusUnits", :min_occurs=>0, :max_occurs=>1, :name=>:radius_units}]}, :AdExtensionOverrideReturnValue=>{:fields=>[{:type=>"AdExtensionOverride", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:value}], :base=>"ListReturnValue"}, :ComparableValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:comparable_value_type}], :abstract=>true}, :MobileExtension=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:phone_number}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:country_code}], :base=>"AdExtension"}}
    ADEXTENSIONOVERRIDESERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADEXTENSIONOVERRIDESERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADEXTENSIONOVERRIDESERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADEXTENSIONOVERRIDESERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end