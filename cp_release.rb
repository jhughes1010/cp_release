# Project to parse MEMP and ACP 'released program' files
# 1. Report released programs for each device-tab
# 2. Ensure ACP and MEMP release tables are in sync
require_relative "device"
require_relative "probe"


puts "-----Devices-----"
two_wire = Device.new("2 Wire Devices", "2wire.txt")
three_wire = Device.new("3 Wire Devices", "3wire.txt")
spi = Device.new("SPI Devices", "spi.txt")
puts "-----Probe Locations-----"
acp = Probe.new("ACP Probe facility")
memp = Probe.new("MEMP Probe facility")
#retrieve probe floor details
acp.get_programs
memp.get_programs
#retrieve device details
spi.get_devices
two_wire.get_devices
three_wire.get_devices
#output device data
puts"-----"
puts spi.title
puts spi.filename
puts spi.device_names

#
puts two_wire.title
puts two_wire.filename
puts two_wire.device_names
#
puts three_wire.title
puts three_wire.filename
puts three_wire.device_names

