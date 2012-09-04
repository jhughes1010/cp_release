# Project to parse MEMP and ACP 'released program' files
# 1. Report released programs for each device-tab
# 2. Ensure ACP and MEMP release tables are in sync
require_relative "device"
require_relative "probe"


puts "-----Devices-----"
two_wire = Device.new("2 Wire Devices", "2wire.txt")
three_wire = Device.new("3 Wire Devices", "3wire.txt")
spi = Device.new("SPI", "spi.txt")
puts "-----Probe Locations-----"
acp = Probe.new("ACP Probe facility")
memp = Probe.new("MEMP Probe facility")

