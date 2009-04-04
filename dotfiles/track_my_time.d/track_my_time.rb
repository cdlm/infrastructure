#!/usr/bin/env ruby1.9
# track_my_time.rb
#
# Copyright (c) 2008-2009 Adrian Kuhn, Switzerland
# 
# Permission is hereby granted, free of charge, to any person
# obtaining a copy of this software and associated documentation
# files (the "Software"), to deal in the Software without
# restriction, including without limitation the rights to use,
# copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following
# conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# 
# The software is provided "AS IS", without warranty of any kind,
# express or implied, including but not limited to the warranties
# of merchantability, fitness for a particular purpose and
# noninfringement. In no event shall the authors or copyright
# holders be liable for any claim, damages or other liability,
# whether in an action of contract, tort or otherwise, arising
# from, out of or in connection with the software or the use or
# other dealings in the software.
# 
# $Id: track_my_time.rb 25311 2009-03-07 16:22:45Z akuhn $
#
# Installation:
# 1. put track_my_time.rb somewhere
# 2. edit $browser $editor $folder $fname $ignore to your preferences
# 3. `alias 'I'='ruby some/where/track_my_time.rb'`
#
# Usage:
# --cloud, shows the term cloud of last week
# --hack, opens this script! happy hacking!!!
# --open, opens current tracking file
# --tail, prints 10 most recent entries 
# no agruments given, prints the time since the last sample was taken
# agruments given, appends a line with all arguments and a timestamp to $fname
#

require 'date'
require 'builder'

# $browser = "qlmanage -p 2>/dev/null"
$browser = 'open'
$editor = "mate"
$folder = (__FILE__.match /(.*)\/[^\/]+$/)[1] 
$fname = "#{$folder}/time_%Y_week%V.txt"
$ignore = /(^(am|was)\s+(in|on|up|at|back|home|with).?(\s+|$))/

# Animal verbing (fold)

class DateTime # Animal verbing 
  def strip_timezone
    self.new_offset(of=0) + DateTime.now.offset 
  end
end

class String
  def fancy_downcase
    return self if self =~ /^[A-Z]+$/
    self.downcase
  end
end

module Builder
  class XmlMarkup
    def self.xhtml(args, &block)
      x = Builder::XmlMarkup.new(args)
      x.instruct!
      x.declare! :DOCTYPE, :html, :PUBLIC, "-//W3C//DTD XHTML 1.0 Strict//EN", "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
      x.html( "xmlns" => "http://www.w3.org/1999/xhtml" ) do
        block.call x
      end
    end
  end
end
# (end)

class Event
  attr_accessor :date, :span, :text
  def self.now(text=nil)
    Event.new(DateTime.now.strip_timezone,text)
  end
  def initialize(date,text)
    @date = date
    @text = text
  end
  def span_to_datetime
    DateTime.new + (@span - @span.to_i)
  end
  def terms
    terms = @text.scan /\S+[a-zA-Z]/
    terms.collect! { |x| x.fancy_downcase } 
  end
  def to_s
    "#{(@date - @span).strftime("%H:%M")}\t" +
    "#{@date.strftime("%H:%M")}\t" +
    "#{@span.to_i}d #{span_to_datetime.strftime("%H:%M'%S\"")}\t" +
    "#{@text}"
  end
  def ignore?
    @text =~ $ignore
  end
  def diff!(event)
    @span = self.date - event.date
    "#{@span.to_i}d #{span_to_datetime.strftime("%H:%M'%S\"")} " +
    "#{"(ignored)" if ignore?}"
  end
end

class Week < Array
  def read(datetime)
    fname = datetime.strftime($fname)
    read_from(fname)
    return self
  end 
  def this_week
    read(DateTime.now)
  end
  def last_week
    read(DateTime.now - 7)
  end
  def compute_span
    time = first.date
    each do |event|
      event.span = event.date - time
      time = event.date
    end
  end
  def term_bag
    compute_span
    terms = Bag.new
    self.each do |event|
      event.terms.each do |term|
        terms.add(term, (event.span * 24).to_f) 
      end unless event.ignore? 
      puts event #if event.ignore? 
    end
    terms.add_I_event(self)
    terms.reject_stopwords!
    # terms.reject_cmdline_stopwords!
  end
  def last
    return Event.now if empty?
    super
  end
  def first
    return Event.now if empty?
    super
  end
  private
  def add_now_if_empty
    self << Event.now if self.empty?
  end
  def read_from(file_name)
    return unless File.exist?(file_name)
    File.open(file_name) do |f|
      f.each do |line|
        unless line.strip.empty? then
          now = DateTime.strptime(line,"%Y/%m/%d\t%H:%M:%S\t") 
          line =~ /\t([^\t]+)$/
          self << Event.new(now, $1)
        end  
      end
    end
  end
end

class Bag < Hash
  def add(term,count=1)
    if self.key? term then
      self[term] = self[term] + count
    else
      self[term] = 0 + count
    end
  end
  def cloud
    pairs = TimeCloud.new
    self.each_pair { |x,y| pairs << CloudItem.new(x,y) }
    pairs
  end
  def reject_stopwords!
    File.open("#{$folder}/stop_words.txt") do |f|
      f.each do |line|    
        self.delete line.chomp
      end
    end
    return self
  end
  def reject_cmdline_stopwords!
    $*[1..-1].each do |stopword|    
      self.delete stopword
    end
    return self
  end
  def add_I_event(week)
    add("track_my_time", week.size * 0.01)
  end
end  

CloudItem = Struct.new(:term, :count)
CLOUD_CSS = <<-EOF
  body {
    font: 32pt "Myriad Pro", sans-serif;
    text-align: center;
    margin: 1em auto;
  }
  span { margin: 0 0.3em; }
EOF

class TimeCloud < Array # Array<CloudItem>
  def reject_shorter_than!(hours)
    self.reject! { |each| each.count < hours }
  end
  def open_default(title="time cloud")
    filename = "#{$folder}/timecloud.html"
    File.open(filename, 'w') do |f| self.cloud f, title end
    exec "#{$browser} #{filename}"
  end
  def cloud(file, title)
    self.sort! { |a,b| a.term.downcase <=> b.term.downcase }
    Builder::XmlMarkup.xhtml(:target => file, :indent => 1) do |x|
      x.head {
        x.title title
        x.style(:text => 'text/css') { x.text! CLOUD_CSS }
      }
      x.body {
        self.each do |i|
          x.span i.term, :style => "font-size: #{((i.count**0.75)*10).to_i}pt"
        end
      }
    end
  end
end

class Script
  def initialize(args)
    @args = args
  end    
  def run
    f = @args.first 
    if f == '--cloud' then
      hypen_hypen_cloud 
    elsif f == '--edit' or f == '--open' then
      `#{$editor} \"#{DateTime.now.strftime($fname)}\"`
    elsif f == '--tail' then
      print_tail
    elsif f == '--hack' then
      `#{$editor} \"#{__FILE__}\"`
    elsif @args.empty? then
      no_arguments_given 
    else
      arguments_given 
    end  
  end
  def hypen_hypen_cloud
    cloud = Week.new.this_week.last_week.term_bag.cloud
    cloud.reject_shorter_than! 1.5
    cloud.open_default "time cloud since last week"
  end
  def no_arguments_given
    puts Event.now.diff!(Week.new.this_week.last)  
  end
  def arguments_given 
    event = Event.now(@args.join(' '))
    puts event.diff!(Week.new.read(event.date).last)
    File.open(event.date.strftime($fname), 'a') do |f|
      f.puts "#{event.date.strftime("%Y/%m/%d\t%H:%M:%S")}\t#{event.text}"
    end
  end
  def print_tail
    week = Week.new.this_week
    week.compute_span
    puts week[-[10, week.size].min..-1]
  end
end

Script.new($*).run if $0 == __FILE__