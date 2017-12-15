class Proverb
  def initialize(*args)
    if args.last[:qualifier]
      q = " " + args.last[:qualifier]
      a = args[0..-2]
    else
      q = ""
      a = args[0..-1]
    end
    @req = a[0..-2].each_with_index.map{|v,idx|"For want of a #{v} the #{a[idx+1]} was lost."}
    .push("And all for the want of a#{q} #{args[0]}.").join("\n")
  end
  def to_s
    @req
  end
end