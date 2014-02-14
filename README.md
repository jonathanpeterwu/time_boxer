# Hello everyone

# Here is our time_boxing app/gem

#![img](http://24.media.tumblr.com/783618f40f363c3089365cb16b36716f/tumblr_mwv5w0nL7o1sgrc1go1_400.png?)

### Please use the following syntax to enter in a comand

ruby timebox.rb command  time   reminder  phone
				ARGV[0] ARGV[1] ARGV[2]  ARGV[3]

### Example: Setting up a 30 minute timer

ruby timebox.rb eggtimer  30

### Example: Setting up a 30 minute timer with a reminder

ruby timebox.rb eggtimer 30  "finish part 1"

### Example: Setting up a text confirmation

ruby timebox.rb twilio   30 +18183379884

### Example: Setting up a text confirmation

ruby timebox.rb twilio   30  "finish part 2"

### Example: Setting up both a 30 minute timer and a text confirmation

ruby timebox.rb all  30

### Example: Setting up both a 30 minute timer and a text confirmation with a message

ruby timebox.rb all  30  "finish all reading for the day"