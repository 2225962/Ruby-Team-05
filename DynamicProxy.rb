class DynamicProxy
  def method_missing(name, *args)
    puts "Method `#{name}` with arguments #{args.inspect} was called!"
  end
end

proxy = DynamicProxy.new
proxy.SECRETMETHOD(69) 
