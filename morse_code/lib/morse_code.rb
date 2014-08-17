require 'pry'
def decode(code)
  hash = Hash.new(0)
  hash["A"] = ".-"
  hash["B"] = "-..."
  hash["C"] = "-.-."
  hash["D"] = "-.."
  hash["E"] = "."
  hash["F"] = "..-."
  hash["G"] = "--."
  hash["H"] = "...."
  hash["I"] = ".."
  hash["J"] = ".---"
  hash["K"] = "-.-"
  hash["L"] = ".-.."
  hash["M"] = "--"
  hash["N"] = "-."
  hash["O"] = "---"
  hash["P"] = ".--."
  hash["Q"] = "--.-"
  hash["R"] = ".-."
  hash["S"] = "..."
  hash["T"] = "-"
  hash["U"] = "..-"
  hash["V"] = "...-"
  hash["W"] = ".--"
  hash["X"] = "-..-"
  hash["Y"] = "-.--"
  hash["Z"] = "--.."
  hash["0"] = "-----"
  hash["1"] = ".----"
  hash["2"] = "..---"
  hash["3"] = "...--"
  hash["4"] = "....-"
  hash["5"] = "....."
  hash["6"] = "-...."
  hash["7"] = "--..."
  hash["8"] = "---.."
  hash["9"] = "----."
  hash["/"] = " "
  hash = hash.invert


  sentence = ""
  arr = code.split(" ")


  arr.each do |str|
    if str == "/"
      sentence << " "
    elsif str == "-.-.--"
      sentence << "!"
    elsif str == ".----."
      sentence << "'"
    else
      sentence << hash[str]
    end
  end
  sentence
end


