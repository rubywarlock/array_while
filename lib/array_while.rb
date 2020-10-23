require "array_while/version"

class Object
  class Array
    def while
      return unless block_given?
      index, array = 0, self.dup

      while array.size > 0
        yield(array.shift, index)

        index += 1
      end
    end
  end

  class Hash
    def while
      return unless block_given?
      index, hash = 0, self.dup

      while hash.size > 0
        key_value = hash.shift

        yield(*key_value, index)

        index += 1
      end
    end
  end
end
