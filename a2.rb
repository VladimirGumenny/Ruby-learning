def audio(related)
  groups = []
  related.each_with_index do |row, i|
    row.chars.each_with_index do |ch, j|
      next if i == j
      if ch == '1'
        groups << [i, j].sort
      end
    end
  end
  groups.uniq!
  res = {}

  groups.each do |gr|
    gr.each do |e|
      unless res.has_key?(e)
        res[e] = gr - [e]
        puts e
      else
        unless res[e].values.any?(e)
          p e
        end
      end
    end
  end

end


related = ['1100', '1110', '0110', '0001']
puts audio(related)

'1100'
'1110'
'0110'
'0001'
