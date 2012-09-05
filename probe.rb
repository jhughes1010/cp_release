class Probe
  def initialize(title, filename)
    puts "Created #{title} Class"
    @title = title
    @filename = filename
  end
  def get_devices
    @data = IO.readlines("setup/#{@filename}")
  end
end