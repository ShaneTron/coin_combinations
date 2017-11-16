

# number = ARGV[0].to_i

def coin_combinations (number)
  if (number < 1)
    number *= 100
  end
  total = 0
  quarter_count = 0
  dime_count = 0
  nickel_count = 0
  penny_count = 0
  while (total + 25 <= number)
    quarter_count += 1
    total += 25
  end
  while (total + 10 <= number)
    dime_count += 1
    total += 10
  end
  while (total + 5 <= number)
    nickel_count += 1
    total += 5
  end
  while (total + 1 <= number)
    penny_count += 1
    total += 1
  end
  return [quarter_count, dime_count, nickel_count, penny_count]
end
