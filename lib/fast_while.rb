require "array_while/version"

class Object

  class Array
    def while
      i, array = 0, dup

      while size > 0
        yield(shift, i)

        i += 1
      end

      return array
    end
  end

  class Hash
    def while
      i, hash = 0, dup

      while size > 0
        yield(*(shift), i)

        i += 1
      end

      return hash
    end
  end
end
