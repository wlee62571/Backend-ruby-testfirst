require "time"
class Timer
  #write your code here
  @start_time = Time.now

  def seconds #initialize_time_count
    start_time = Time.now
    start_time - start_time
  end

  def time_string
  # One way to implement the Timer is with a helper method.
  # Uncomment these specs if you want to test-drive that
  # method, then call that method from inside of time_string.
  #
  # describe 'padded' do
  #   it 'pads zero' do
  #     expect(@timer.padded(0)).to eq('00')
  #   end
  #   it 'pads one' do
  #     expect(@timer.padded(1)).to eq('01')
  #   end
  #   it "doesn't pad a two-digit number" do
  #     expect(@timer.padded(12)).to eq('12')
  #   end
  # end
    Time.new(this_year, this_month, this_date)
  end

  def seconds_elapsed(start_time, finish_time)
    finish_time - start_time
  end
# from https://github.com/shan24/Test-first-Learn-Ruby-Solution/blob/master/10_timer/timer.rb
  attr_accessor :seconds

  def initialize
    @seconds= 0 
  end



  def time_string 
    x=[]
    seconds=(@seconds%60)
    minu=(@seconds/60)%60
    hrs=(@seconds/3600)
    
    x="#{padded(hrs)}:#{padded(minu)}:#{padded(seconds)}"
  end

  def padded(num)
    (num).to_s.length > 1  ? num.to_s : "0"+ num.to_s
  end
end
