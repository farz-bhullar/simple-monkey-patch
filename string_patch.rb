class String
  def shout
    self.upcase + " !!!"
  end

  def whisper
    self.downcase + " ..."
  end

  def palindrome?
    self == self.reverse
  end

  def to_snake_case
    self.strip
        .gsub(/::/, '/')
        .gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2')
        .gsub(/([a-z\d])([A-Z])/,'\1_\2')
        .tr("-", "_")
        .gsub(/\s+/, "_")
        .downcase
  end
end