require 'digest'

def login(id, prefix="knouroozi")
    hash = Digest::SHA512.hexdigest(prefix.to_s + id.to_s)
    user = hash.slice!(0...16)
    pass = hash.slice!(0...16)
    { :user => user,
      :password => pass,
      :secret => hash }
end
