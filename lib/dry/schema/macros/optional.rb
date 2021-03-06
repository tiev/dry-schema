# frozen_string_literal: true

require 'dry/schema/macros/key'

module Dry
  module Schema
    module Macros
      # A Key specialization used for keys that can be skipped
      #
      # @api public
      class Optional < Key
        # @api private
        def operation
          :then
        end

        # @api private
        def to_rule
          super unless trace.captures.empty?
        end
      end
    end
  end
end
