require 'ostruct'

module GLI
  # Subclass of +OpenStruct+ that provides hash-like methods for #[] and #[]=.  Note that is is *not* a Hash.
  # By using GLI::App#use_openstruct, your options will be coerced into one of these.
  class Options < OpenStruct

    # Return the value of an attribute
    def[](k)
      @table[k.to_sym]
    end

    # Set the value of an attribute
    def[]=(k, v)
      @table[k.to_sym] = v
    end

  end
end

