# #!/usr/bin/ruby
# # -*- coding: UTF-8 -*-
#
# $global_variable = 10
# class Class1
#   def print_global
#       puts "全局变量在 Class1 中输出为 #$global_variable"
#   end
# end
# class Class2
#   def print_global
#       puts "全局变量在 Class2 中输出为 #$global_variable"
#   end
# end
#
# class1obj = Class1.new
# class1obj.print_global
# class2obj = Class2.new
# class2obj.print_global
#
# class Customer
#    def initialize(id, name, addr)
#       @cust_id=id
#       @cust_name=name
#       @cust_addr=addr
#    end
#    def display_details()
#       puts "Customer id #@cust_id"
#       puts "Customer name #@cust_name"
#       puts "Customer address #@cust_addr"
#     end
# end
#
# # 创建对象
# cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
# cust2=Customer.new("2", "Poul", "New Empire road, Khandala")
#
# # 调用方法
# cust1.display_details()
# cust2.display_details()
# class Customer
#    @@no_of_customers=0
#    def initialize(id, name, addr)
#       @cust_id=id
#       @cust_name=name
#       @cust_addr=addr
#    end
#    def display_details()
#       puts "Customer id #@cust_id"
#       puts "Customer name #@cust_name"
#       puts "Customer address #@cust_addr"
#     end
#     def total_no_of_customers()
#        @@no_of_customers += 1
#        puts "Total number of customers: #@@no_of_customers"
#     end
# end
#
# # 创建对象
# cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
# cust2=Customer.new("2", "Poul", "New Empire road, Khandala")
#
# # 调用方法
# cust1.total_no_of_customers()
# cust2.total_no_of_customers()
#
# class Example
#    VAR1 = 100
#    VAR2 = 200
#    def show
#        puts "第一个常量的值为 #{VAR1}"
#        puts "第二个常量的值为 #{VAR2}"
#    end
# end
#
# # 创建对象
# object=Example.new()
# object.show
#
# a = 10
# b = 20
# c = 30
#
# a, b, c = 10, 20, 30
# a, b = b, c
# defined? variable # 如果 variable 已经初始化，则为 True
# foo = 42
# defined? foo    # => "local-variable"
# defined? $_     # => "global-variable"
# defined? bar    # => nil（未定义）
#
# defined? method_call # 如果方法已经定义，则为 True
#
# defined? puts        # => "method"
# defined? puts(bar)   # => nil（在这里 bar 未定义）
# defined? unpack      # => nil（在这里未定义）
#
# # 如果存在可被 super 用户调用的方法，则为 True
# defined? super
# defined? super     # => "super"（如果可被调用）
# defined? super     # => nil（如果不可被调用）
# defined? yield   # 如果已传递代码块，则为 True
#
#
#
# defined? yield    # => "yield"（如果已传递块）
# defined? yield    # => nil（如果未传递块）
#
# MR_COUNT = 0        # 定义在主 Object 类上的常量
# module Foo
#   MR_COUNT = 0
#   ::MR_COUNT = 1    # 设置全局计数为 1
#   MR_COUNT = 2      # 设置局部计数为 2
# end
# puts MR_COUNT       # 这是全局常量
# puts Foo::MR_COUNT  # 这是 "Foo" 的局部常量
#
# CONST = ' out there'
# class Inside_one
#    CONST = proc {' in there'}
#    def where_is_my_CONST
#       ::CONST + ' inside one'
#    end
# end
# class Inside_two
#    CONST = ' inside two'
#    def where_is_my_CONST
#       CONST
#    end
# end
# puts Inside_one.new.where_is_my_CONST
# puts Inside_two.new.where_is_my_CONST
# puts Object::CONST + Inside_two::CONST
# puts Inside_two::CONST + CONST
# puts Inside_one::CONST
# puts Inside_one::CONST.call + Inside_two::CONST
#
# #!/usr/bin/ruby -w
#
# # 这是一个单行注释。
#
# puts "Hello, Ruby!"
# puts "Hello, Ruby!"
#
# =begin
# 这是一个多行注释。
# 可扩展至任意数量的行。
# 但 =begin 和 =end 只能出现在第一行和最后一行。
# =end
#
# x=1
# if x > 2
#   puts "x 大于 2"
# elsif x <= 2 and x!=0
#   puts "x 是 1"
# else
#   puts "无法得知 x 的值"
# end
#
# $debug=1
# print "debug\n" if $debug
#
# x=1
# unless x>2
#   puts "x 小于 2"
# else
#   puts "x 大于 2"
# end
# $var =  1
# print "1 -- 这一行输出\n" if $var
# print "2 -- 这一行不输出\n" unless $var
#
# $var = false
# print "3 -- 这一行输出\n" unless $var
#
# $age =  5
# case $age
# when 0 .. 2
#   puts "婴儿"
# when 3 .. 6
#   puts "小孩"
# when 7 .. 12
#   puts "child"
# when 13 .. 18
#   puts "少年"
# else
#   puts "其他年龄段的"
# end
#
# foo = false
# bar = true
# quu = false
#
# case
# when foo then puts 'foo is true'
# when bar then puts 'bar is true'
# when quu then puts 'quu is true'
# end
# $i = 0
# $num = 5
#
# while $i < $num  do
#   puts("在循环语句中 i = #$i" )
#   $i +=1
# end

# $i = 0
# $num = 5
#
# while $i < $num  do
#   puts("在循环语句中 i = #$i" )
#   $i +=1
# end
#
#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

$i = 0
$num = 5

while $i < $num  do
  puts("在循环语句中 i = #$i" )
  $i +=1
end