require "array_while/version"

module ArrayWhile
  class Error < StandardError; end

  class Object
    class Array
      def while
        index = 0
        array = Array.new(self)

        while array.size > 0

          yield(array.shift, index)

          index += 1
        end

      end
    end

    class Hash
      def while
      end
    end
  end
end
