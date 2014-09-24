require 'java'

class MyRunnable
  java_implements "java.lang.Runnable"

  java_signature "void run()"
  def run
    puts 'Hello World!'
  end

  java_signature "void main(String[])"
  def self.main(args)
    t = java.lang.Thread.new(MyRunnable.new)
    t.start
  end
end
