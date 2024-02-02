require 'pp'
IRB::Irb.class_eval do
  def output_value
    pp @context.last_value
  end
end
