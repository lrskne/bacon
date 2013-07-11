require 'bacon'
#describe Bacon do
#  it "is edible" do
#    Bacon.new.edible?.should be_true
#  end
#  it "expired!" do
#    bacon = Bacon.new
#    bacon.expired!
#    bacon.should be_expired
#  end
#end
# More efficient: and explained here (book explanation and is poor!)
#First, the its method takes the name of a method to call on the subject of these
#tests. The block specified should contain an assertion for the output of that method.
#Unlike before, you’re not calling should on an object, as you have done in
#previous tests, but rather on seemingly nothing at all. If you do this, RSpec figures
#out that you mean the subject you defined, so it calls should on that.
#You can also reference the subject manually in your tests, as you’ll see
#when you write the expired! example shown in the following listing.

require 'bacon'
describe Bacon do
  subject { Bacon.new }
  its(:edible?) { should be_true }
  it "expired!" do
    bacon = Bacon.new
    bacon.expired!
    bacon.expired.should be_true
  end
end