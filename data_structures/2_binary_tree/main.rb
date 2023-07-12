class Tree
  attr_reader :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def add(value)
    # Реализовать метод добавления
  end

  def remove(value)
    # Реализовать метод удаления
  end
end

class Right < Tree; end

class Left < Tree; end

#         Tree(3)
#        /       \
#    Left(1)     Right(5)
#   /      \     /      \
# nil      nil nil    Right(10)

# 1. Реализовать метод добавления и удаления
# 2. Написать примеры использования как в визуальном примере выше
# 3. Отзеркалить дерево в методе mirror(tree) с помощью рекурсии 

def mirror(tree)
  raise NotImplementedError
end

#      3
#    /    \
#   5      1
#  /  \   /  \
# 10    nil  nil
