class Box
  # 初始化类变量
  @@count = 0
  def initialize(w,h)
    # 给实例变量赋值
    @width, @height = w, h

    @@count += 1
  end

  def self.printCount()
    puts "Box count is : #@@count"
  end
end

# 创建两个对象
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

# 调用类方法来输出盒子计数
Box.printCount()
class Box
  # 构造器方法
  def initialize(w,h)
    @width, @height = w, h
  end
  # 定义 to_s 方法
  def to_s
    "(w:#@width,h:#@height)"  # 对象的字符串格式
  end
end

# 创建对象
box = Box.new(10, 20)

# 自动调用 to_s 方法
puts "String representation of box is : #{box}"


# 定义类
class Box
  # 构造器方法
  def initialize(w,h)
    @width, @height = w, h
  end

  # 实例方法默认是 public 的
  def getArea
    getWidth() * getHeight
  end

  # 定义 private 的访问器方法
  def getWidth
    @width
  end
  def getHeight
    @height
  end
  # make them private
  private :getWidth, :getHeight

  # 用于输出面积的实例方法
  def printArea
    @area = getWidth() * getHeight
    puts "Big box area is : #@area"
  end
  # 让实例方法是 protected 的
  protected :printArea
end

# 创建对象
box = Box.new(10, 20)

# 调用实例方法
a = box.getArea()
puts "Area of the box is : #{a}"

# 尝试调用 protected 的实例方法
box.printArea()

# 定义类
class Box
  # 构造器方法
  def initialize(w,h)
    @width, @height = w, h
  end
  # 实例方法
  def getArea
    @width * @height
  end
end

# 定义子类
class BigBox < Box

  # 添加一个新的实例方法
  def printArea
    @area = @width * @height
    puts "Big box area is : #@area"
  end
end

# 创建对象
box = BigBox.new(10, 20)

# 输出面积
box.printArea()
# 定义类
class Box
  # 构造器方法
  def initialize(w,h)
    @width, @height = w, h
  end
  # 实例方法
  def getArea
    @width * @height
  end
end

# 定义子类
class BigBox < Box

  # 改变已有的 getArea 方法
  def getArea
    @area = @width * @height
    puts "Big box area is : #@area"
  end
end

# 创建对象
box = BigBox.new(10, 20)

# 使用重载的方法输出面积
box.getArea()


