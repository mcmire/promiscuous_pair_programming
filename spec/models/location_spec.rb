require File.expand_path('../../spec_helper', __FILE__)

describe Location do
  subject { Factory.build(:location) }
  
  context "validations" do
    it "requires raw_location to be filled in" do
      subject.raw_location = nil
      subject.should_not be_valid
    end
    
    it "requires lat to be filled in" do
      subject.lat = nil
      subject.should_not be_valid
    end
    
    it "requires lng to be filled in" do
      subject.lng = nil
      subject.should_not be_valid
    end
    
    it "requires city to be filled in" do
      subject.city = nil
      subject.should_not be_valid
    end
    
    it "requires province to be filled in" do
      subject.province = nil
      subject.should_not be_valid
    end
    
    it "requires state to be filled in" do
      subject.state = nil
      subject.should_not be_valid
    end
    
    it "requires zip to be filled in" do
      subject.zip = nil
      subject.should_not be_valid
    end
    
    it "requires country to be filled in" do
      subject.country = nil
      subject.should_not be_valid
    end
    
    it "requires country_code to be filled in" do
      subject.country_code = nil
      subject.should_not be_valid
    end
    
    it "requires accuracy to be filled in" do
      subject.accuracy = nil
      subject.should_not be_valid
    end
    
    it "fails validation if the accuracy is 0" do
      subject.accuracy = 0
      subject.should_not be_valid
    end
    
    it "requires precision to be filled in" do
      subject.precision = nil
      subject.should_not be_valid
    end
    
    it "fails validation if the precision is 'unknown'" do
      subject.precision = "unknown"
      subject.should_not be_valid
    end
    
    it "requires suggested_bounds to be filled in" do
      subject.suggested_bounds = nil
      subject.should_not be_valid
    end
    
    it "requires provider to be filled in" do
      subject.provider = nil
      subject.should_not be_valid
    end
  end 
end