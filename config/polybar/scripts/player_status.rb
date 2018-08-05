#!/usr/bin/env ruby
$stdout.sync = true

require 'optparse'


start = -1
slice = nil
speed = 0.5


OptionParser.new do |opts|
  opts.banner = "Usage: player_status.rb [options]"

  opts.on(
    "-m LENGTH",
    "--marque LENGTH",
    "Display as a scrolling marque with the given LENGTH"
  ) do |m|
    slice = m.to_i
  end

  opts.on("-s SPEED", "--speed SPEED", "Scroll SPEED in second") do |m|
    speed = m.to_f
  end
end.parse!


def build_banner
  artist = `playerctl metadata artist`
  title  = `playerctl metadata title`

  "#{artist}: #{title}"
end

def marque(banner, start, slice)
  main_slice = banner[start, slice]

  if main_slice.length < slice
    "#{main_slice} #{banner[0, slice - main_slice.length]}"
  else
    "#{main_slice} "
  end
end

while true do
  sleep speed
  status = `playerctl status 2>&1`.strip
  if status == 'Playing'
    banner = build_banner
    banner_length = banner.length

    if slice && slice < banner_length
      start = -1 if start >= banner_length
      start += 1

      puts " #{marque(banner, start, slice)}"
    else
      puts " #{banner}"
    end
  elsif status == 'Paused'
    puts " Paused"
  else
    exit 0
  end
end
