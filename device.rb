class Device
  def initialize(title, filename)
    puts "Created #{title} Class with filename #{filename}"
    @title = title
    @filename = filename
  end
  def title
    @title
  end
  def filename
    @filename
  end
  def get_devices
    @data = IO.readlines("devices/#{@filename}")
  end
  def device_names
    puts @data
  end

end
