# #!/usr/bin/ruby
# # -*- coding: UTF-8 -*-
#
# $i = 0
# $num = 5
#
# while $i < $num  do
#   puts("在循环语句中 i = #$i" )
#   $i +=1
# end
#
# $i = 0
# $num = 5
# begin
#   puts("在循环语句中 i = #$i" )
#   $i +=1
# end while $i < $num
#
# $i = 0
# $num = 5
#
# until $i > $num  do
#   puts("在循环语句中 i = #$i" )
#   $i +=1;
# end
# $i = 0
# $num = 5
# begin
#   puts("在循环语句中 i = #$i" )
#   $i +=1;
# end until $i > $num
# for i in 0..5
#   puts "局部变量的值为 #{i}"
# end
#
# (0..5).each do |i|
#   puts "局部变量的值为 #{i}"
# end
#
#
# for i in 0..5
#   if i > 2 then
#     break
#   end
#   puts "局部变量的值为 #{i}"
# end
#
#
for i in 0..5
  if i < 2 then
    next
  end
  puts "局部变量的值为 #{i}"
end

for i in 0..5
  if i < 2 then
    puts "局部变量的值为 #{i}"
    redo
  end
end

begin
  do_something   # 抛出的异常
rescue
  # 处理错误
  retry          # 重新从 begin 开始
end
for i in 1..5
  retry if some_condition # 重新从 i == 1 开始
end

def test(a1="Ruby", a2="Perl")
  puts "编程语言为 #{a1}"
  puts "编程语言为 #{a2}"
end
test "C", "C++"
test

def test
  i = 100
  j = 10
  k = 0
end

def test
  i = 100
  j = 200
  k = 300
  return i, j, k
end
var = test
puts var
def sample (*test)
  puts "参数个数为 #{test.length}"
  for i in 0...test.length
    puts "参数值为 #{test[i]}"
  end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"
class Accounts
  def reading_charge
  end
  def Accounts.return_date
  end
end

alias 方法名 方法名
alias 全局变量 全局变量

alias foo bar
alias $MATCH $&
block_name{
  statement1
  statement2
  ..........
}
def test
  puts "在 test 方法内"
  yield
  puts "你又回到了 test 方法内"
  yield
end
test {puts "你在块内"}


def test
  yield 5
  puts "在 test 方法内"
  yield 100
end
test {|i| puts "你在块 #{i} 内"}


def test
  yield
end
test{ puts "Hello world"}

def test(&block)
  block.call
end
test { puts "Hello World!"}
BEGIN {
  # BEGIN 代码块
  puts "BEGIN 代码块"
}

END {
  # END 代码块
  puts "END 代码块"
}
# MAIN 代码块
puts "MAIN 代码块"

# 定义在 trig.rb 文件中的模块

module Trig
  PI = 3.141592654
  def Trig.sin(x)
    # ..
  end
  def Trig.cos(x)
    # ..
  end
end

module Moral
  VERY_BAD = 0
  BAD = 1
  def Moral.sin(badness)
    # ...
  end
end
$LOAD_PATH << '.'

require 'trig.rb'
require 'moral'

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)


module Week
  FIRST_DAY = "Sunday"
  def Week.weeks_in_month
    puts "You have four weeks in a month"
  end
  def Week.weeks_in_year
    puts "You have 52 weeks in a year"
  end
end
$LOAD_PATH << '.'
require "support"

class Decade
  include Week
  no_of_yrs=10
  def no_of_months
    puts Week::FIRST_DAY
    number=10*12
    puts number
  end
end
d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months

module A
  def a1
  end
  def a2
  end
end
module B
  def b1
  end
  def b2
  end
end

class Sample
  include A
  include B
  def s1
  end
end

samp=Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1

name1 = "Joe"
name2 = "Mary"
puts "你好 #{name1},  #{name2} 在哪?"

x, y, z = 12, 36, 72
puts "x 的值为 #{ x }"
puts "x + y 的值为 #{ x + y }"
puts "x + y + z 的平均值为 #{ (x + y + z)/3 }"

desc1 = %Q{Ruby 的字符串可以使用 '' 和 ""。}
desc2 = %q|Ruby 的字符串可以使用 '' 和 ""。|

puts desc1
puts desc2
myStr = String.new("THIS IS TEST")
foo = myStr.downcase

puts "#{foo}"
names = Array.new(20)
puts names.size  # 返回 20
puts names.length # 返回 20
names = Array.new(4, "mac")

puts "#{names}"

nums = Array.new(10) { |e| e = e * 2 }

puts "#{nums}

digits = Array(0..9)

puts "#{digits}"
digits = Array(0..9)

num = digits.at(6)

puts "#{num}"

months = Hash.new( "month" )

puts "#{months[0]}"
puts "#{months[72]}"

H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
puts "#{H['b']}"
$, = ", "
months = Hash.new( "month" )

months = {"1" => "January", "2" => "February"}

keys = months.keys

puts "#{keys}"

time1 = Time.new

puts "当前时间 : " + time1.inspect

# Time.now 功能相同
time2 = Time.now
puts "当前时间 : " + time2.inspect

time = Time.new

# Time 的组件
puts "当前时间 : " + time.inspect
puts time.year    # => 日期的年份
puts time.month   # => 日期的月份（1 到 12）
puts time.day     # => 一个月中的第几天（1 到 31）
puts time.wday    # => 一周中的星期几（0 是星期日）
puts time.yday    # => 365：一年中的第几天
puts time.hour    # => 23：24 小时制
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999：微秒
puts time.zone    # => "UTC"：时区名称
Time.local(2008, 7, 8)
# July 8, 2008, 09:10am，本地时间
Time.local(2008, 7, 8, 9, 10)
# July 8, 2008, 09:10 UTC
Time.utc(2008, 7, 8, 9, 10)
# July 8, 2008, 09:10:11 GMT （与 UTC 相同）
Time.gm(2008, 7, 8, 9, 10, 11)
time = Time.new

values = time.to_a
p values

time = Time.new

values = time.to_a
puts Time.utc(*values)

# 返回从纪元以来的秒数
time = Time.now.to_i

# 把秒数转换为 Time 对象
Time.at(time)

# 返回从纪元以来的秒数，包含微妙
time = Time.now.to_f
time = Time.new

# 这里是解释
time.zone       # => "UTC"：返回时区
time.utc_offset # => 0：UTC 是相对于 UTC 的 0 秒偏移
time.zone       # => "PST"（或其他时区）
time.isdst      # => false：如果 UTC 没有 DST（夏令时）
time.utc?       # => true：如果在 UTC 时区
time.localtime  # 转换为本地时区
time.gmtime     # 转换回 UTC
time.getlocal   # 返回本地区中的一个新的 Time 对象
time.getutc     # 返回 UTC 中的一个新的 Time 对象
#!/usr/bin/ruby -w
time = Time.new

puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S")
now = Time.now           # 当前时间
puts now

past = now - 10          # 10 秒之前。Time - number => Time
puts past

future = now + 10        # 从现在开始 10 秒之后。Time + number => Time
puts future

diff = future - now      # => 10  Time - Time => 秒数
puts diff
$, =", "   # Array 值分隔符
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

# 指定范围
digits = 0..9

puts digits.include?(5)
ret = digits.min
puts "最小值为 #{ret}"

ret = digits.max
puts "最大值为 #{ret}"

ret = digits.reject {|i| i < 5 }
puts "不符合条件的有 #{ret}"

digits.each do |digit|
  puts "在循环中 #{digit}"
end
score = 70

result = case score
         when 0..40
           "糟糕的分数"
         when 41..60
           "快要及格"
         when 61..70
           "及格分数"
         when 71..100
           "良好分数"
         else
           "错误的分数"
         end

puts result

if ((1..10) === 5)
  puts "5 在 (1..10)"
end

if (('a'..'j') === 'c')
  puts "c 在 ('a'..'j')"
end

if (('a'..'j') === 'z')
  puts "z 在 ('a'..'j')"
end
ary = [1,2,3,4,5]
ary.each do |i|
  puts i
end
a = [1,2,3,4,5]
b = Array.new
b = a.collect{ |x|x }
puts b
a = [1,2,3,4,5]
b = a.collect{|x| 10*x}
puts b

val1 = "This is variable one"
val2 = "This is variable two"
puts val1
puts val2
puts "Enter a value :"
val = gets
puts val

str="Hello Ruby!"
putc str
print "Hello World"
print "Good Morning"
aFile = File.new("filename", "mode")
# ... 处理文件
aFile.close
File.open("filename", "mode") do |aFile|
  # ... process the file
end
aFile = File.new("input.txt", "r")
if aFile
  content = aFile.sysread(20)
  puts content
else
  puts "Unable to open file!"
end
aFile = File.new("input.txt", "r+")
if aFile
  aFile.syswrite("ABCDEF")
else
  puts "Unable to open file!"
end
aFile = File.new("input.txt", "r+")
if aFile
  aFile.syswrite("ABCDEF")
  aFile.rewind
  aFile.each_byte {|ch| putc ch; putc ?. }
else
  puts "Unable to open file!"
end
arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]
begin
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
rescue
  file = STDIN
end
print file, "==", STDIN, "\n"
begin
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
rescue
  fname = "existant_file"
  retry
end



begin
  puts 'I am before the raise.'
  raise 'An error has occurred.'
  puts 'I am after the raise.'
rescue
  puts 'I am rescued.'
end
puts 'I am after the begin block.'

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end

begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring execution"
end
begin
  # 抛出 'A test exception.'
  puts "I'm not raising exception"
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
  puts "Congratulations-- no errors!"
ensure
  puts "Ensuring execution"
end

throw :lablename
#.. 这不会被执行
catch :lablename do
  #.. 在遇到一个 throw 后匹配将被执行的 catch
end

或

throw :lablename condition
#.. 这不会被执行
catch :lablename do
  #.. 在遇到一个 throw 后匹配将被执行的 catch
end

class Box
  def initialize(w,h)
    @width, @height = w, h
  end
end
class Box
  def initialize(w,h)
    # 给实例变量赋值
    @width, @height = w, h
  end
end
#!/usr/bin/ruby -w

# 定义类
class Box
  # 构造函数
  def initialize(w,h)
    @width, @height = w, h
  end

  # 访问器方法
  def printWidth
    @width
  end

  def printHeight
    @height
  end
end

# 创建对象，初始化盒子的高度与宽度
box = Box.new(10, 20)

# 使用访问器方法
x = box.printWidth()
y = box.printHeight()

puts "盒子宽度 : #{x}"
puts "盒子高度 : #{y}"


#!/usr/bin/ruby -w

# 定义类
class Box
  # 构造器方法
  def initialize(w,h)
    @width, @height = w, h
  end

  # 访问器方法
  def getWidth
    @width
  end
  def getHeight
    @height
  end

  # 设置器方法
  def setWidth=(value)
    @width = value
  end
  def setHeight=(value)
    @height = value
  end
end

# 创建对象
box = Box.new(10, 20)

# 使用设置器方法
box.setWidth = 30
box.setHeight = 50

# 使用访问器方法
x = box.getWidth()
y = box.getHeight()

puts "盒子宽度 : #{x}"
puts "盒子高度 : #{y}"
# 定义类
class Box
  # 构造方法
  def initialize(w,h)
    @width, @height = w, h
  end
  # 实例方法
  def getArea
    @width * @height
  end
end

# 创建对象
box = Box.new(10, 20)

# 调用实例方法
a = box.getArea()
puts "Area of the box is : #{a}"

