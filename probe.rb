class Probe
  def initialize(title, filename)
    puts "Created #{title} Class"
    @title = title
    @filename = filename
  end
  def get_programs
    @data = IO.readlines("setup/#{@filename}")
  end
  def program_names(d)
    d.upcase!
    d.chomp!
    @data.each do |program|
      #program.chomp!
      #program.upcase!
      unless program[0] == ";"
        #puts program
        line = program.split
        unless line.empty?
          if line[0].include? d
            puts line[0] + ' ' + line[1] + ' ' + line[10] + ' ' + line[11] + ' ' + line[12]
          end
        end
      end
      #puts program
    end
  end
end
