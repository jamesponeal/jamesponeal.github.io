

class Pet

  def initialize
    @happiness = 5
    @hunger = 5
    @energy = 5
    @alive_status = true
  end

  def walk
    @happiness += 1
    @hunger += 1
    @energy -= 1
    still_alive?
  end

  def feed
    @hunger -= 2
    @happiness += 1
    still_alive?
  end

  def put_to_bed
    @hunger += 1
    @energy += 2
    @happiness -= 1
    still_alive?
  end

  def still_alive?
    @alive_status = false if @happiness <= 0
    @alive_status = false if @hunger >= 10
    @alive_status = false if @energy <= 0
  end

end

