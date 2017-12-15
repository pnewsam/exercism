class Proverb
  def initialize(*args)
    q = " " + args.pop[:qualifier] if args.last.class == Hash
    @req = args[0..-2].each_with_index.map{|v,idx|"For want of a #{v} the #{args[idx+1]} was lost."}
    .push("And all for the want of a#{q || ''} #{args[0]}.").join("\n")
  end
  def to_s
    @req
  end
end