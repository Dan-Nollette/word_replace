class String
  def word_replace(replaceTarget, replaceResult)
    self.gsub(/#{replaceTarget}/i, replaceResult)
  end
end
