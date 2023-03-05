@[Link(ldflags: "#{__DIR__}/../target/debug/example.dll.lib")]
lib Example
    fun greet (name : UInt8*) : Void
    fun sum (num1 : Int32, num2 : Int32) : Int32
end

Example.greet "Crystal from Rust"
puts "My favourite number is #{Example.sum 2, 2}!"
