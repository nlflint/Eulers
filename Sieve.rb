def solve(limit)
  candidates = (0..limit).map do
    true
  end

  currIdx = 2
  while currIdx < limit do
    candidates = mark(currIdx, candidates)
    currIdx = find_next(currIdx, candidates)
  end

  find_primes(candidates)
end

def find_primes
  results = []
  candidates.each do |candidate|
    if candidate do
      results.push(candidate)
    end
  end
  results
end

def find_next(curr, arry)
  curr += 1
  while !arry[curr] do
    curr += 1
  end
  curr
end

def mark(num, arry)
  i = num * 2
  while i < arry.length do
    arry[num] = false
    i += num
  end
  arry
end
