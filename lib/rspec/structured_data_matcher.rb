require 'rspec/structured_data_matcher/version'
require 'json'

module Rspec
  module StructuredDataMatcher
    VALIDATE_TOOL_URL = 'https://search.google.com/structured-data/testing-tool/validate'.freeze
    RSpec::Matchers.define :valid_structure_data do
      match do |html|
        uri = URI.parse VALIDATE_TOOL_URL
        res = Net::HTTP.post_form uri, html: html
        @json = JSON.parse(res.body.split("\n")[1])
        @json['errors'].empty?
      end

      failure_message do
        "HTML(structure-data) has some errors \n#{JSON.pretty_generate @json['errors']}"
      end

      failure_message_when_negated do
        'HTML(structure-data) is valid'
      end
    end
  end
end
