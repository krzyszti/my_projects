class Cities
  attr_reader :best, :results
  
  def initialize(n, xy_limit)
    @map = []
    @xy_limit = xy_limit
    n.times {|i| @map[i] = city}
    l = *(0...@map.size)
    @results = [total_path(l)]
    @best = l
  end
  
  public
  def evolution
    n = 100 # ilosc osobnikow
    iter = 100 # ilosc iteracji
    pop = []
    n.times {pop.insert(-1, permutation(@map.size))}
    iter.times do |i|
      (pop.size-  1).times {|j| pop[j], pop[j+1] = crossover(pop[j], pop[j+1])}
      pop[0], pop[-1] = crossover(pop[0], pop[-1])
      pop.size.times {|j| pop[j] = mutation(pop[j])}
      pop = selection(pop)
    end
  end
  
  private
  def city
    x = Random.rand(@xy_limit)
    y = Random.rand(@xy_limit)
    while city_exist?([x, y]) do
      x = Random.rand(@xy_limit)
      y = Random.rand(@xy_limit)
    end
    [x, y]
  end
  
  def city_exist?(city)
    @map.each {|c| return true if c == city}
    false
  end
  
  def total_path(o)
    total = 0
    for i in 0...@map.size-1 do
      total += path(@map[o[i]], @map[o[i+1]])
    end
    total += path(@map[o[0]], @map[o[-1]])
    total 
  end
  
  def path(c1, c2)
    Math.sqrt((c2[0] - c1[0])**2 + (c2[1] - c1[1])**2)
  end
  
  def permutation(n)
    p = *(0...n)
    p.shuffle!
  end
  
  def crossover(c1, c2)
    half = c1.size / 2
    c1[0..half], c2[0..half] = c2[0..half], c1[0..half]
    [c1, c2]
  end
  
  def mutation(c)
    half = c.size / 2
    c[0], c[half] = c[half], c[0]
    c
  end
  
  def selection(pop)
    pop.each do |o|
      if @results[-1] > total_path(o)
        @results.insert(-1, total_path(o))
        @best = o
      end
    end
    npop = []
    val = []
    pop.size.times {|i| val[i] = total_path(pop[i])}
    pop.size.times do |i|
      a = Random.rand(val.size)
      b = Random.rand(val.size)
      if val[a] < val[b]
        npop[i] = pop[a]
      else
        npop[i] = pop[b]
      end
    end
    npop[0] = @best
    npop
  end
end


cities = Cities.new(100, 100)
cities.evolution
print cities.best, cities.results
