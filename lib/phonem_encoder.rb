require "phonem_encoder/version"

module PhonemEncoder
  class << self
    def encode_string(string, length=2)
      raise("length must be 1 or 2") if ![1,2].include?(length)

      code = ''
      string = string.downcase.gsub('ß','ss').gsub('ä', 'ae').gsub('ü', 'ue').scan(/./)

      string.each_cons(length) do |chars|
        if length == 2
          case chars.join
          when /^(sc|sz|cz|tz|ts)/ then
            code << 'c'
          when /^(ae)/ then
            code << 'e'
          when /^(pf)/ then
            code << 'v'
          when /^(ks)/ then
            code << 'x'
          when /^(qu)/ then
            code << 'kw'
          when /^(ow)/ then
            code << 'ö'
          when /^(ei|ey)/ then
            code << 'ay'
          when /^(eu)/ then
            code << 'oy'
          when /^(ou)/ then
            code << 'u'
          else
            code << chars.join
          end
        else
          case chars.join
          when /^(z|k|g|q)/ then
            code << 'c'
          when /^(i|j)/ then
            code << 'y'
          when /^(f|w)/ then
            code << 'v'
          when /^(p)/ then
            code << 'b'
          when /^(t)/ then
            code << 'd'
          else
            code << chars.join
          end
        end
      end

      code = encode_string(code, 1) if length == 2

      reduce_multiples(code).scan(/[abcdlmnorsuvwxyö]/).join
    end

    def reduce_multiples(code)
      unless code.gsub!(/(.)\1/, '\1').nil?
        reduce_multiples(code)
      end

      code
    end
  end

  def phonetic_code
    PhonemEncoder.encode_string self.to_s
  end
end

class String
  include PhonemEncoder
end