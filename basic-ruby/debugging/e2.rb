def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


add_proc = Proc.new { |x, y| x + y}
p add_proc.call(3, 4) # or add_proc.(3, 4) or add_proc[3, 4]
p add_proc[10, 10]
p add_proc.(20, 20)

# using lambda syntax for proc
add_lambda = ->(x, y) { x + y }

p add_lambda.(2, 3)