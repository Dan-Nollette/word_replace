class String
  def word_replace(replaceTarget, replaceResult)
    self.gsub(/#{replaceTarget}/i, replaceResult)
  end
end

File.open('../test.txt', 'r') do |file|
  while file_line = file.gets
    puts file_line.word_replace("world", "Earth")
  end
end
