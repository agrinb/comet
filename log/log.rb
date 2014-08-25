require 'pry'

log = [
  {time: 201201, x: 2},
  {time: 201201, y: 7},
  {time: 201201, z: 2},
  {time: 201202, a: 3},
  {time: 201202, b: 4},
  {time: 201202, c: 0}
]


def make_hash(time, log)
  hash = {}
  log.map do |x|
    if x[:time] == time
        hash.merge!(x)
    end
  end
 hash
end


time = []
log.each do |entry|
  unless time.last == entry[:time]
    make_hash(entry[:time], log)
    time << entry[:time]
  end
end







