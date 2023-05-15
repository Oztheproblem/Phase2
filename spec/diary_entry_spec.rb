require "diary_entry"

RSpec.describe DiaryEntry do
  it "constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents" 
  end

  describe "#count_words" do
    it "returns number of words in the contents" do
      diary_entry = DiaryEntry.new("my_title", "some contents here")
      expect(diary_entry.count_words).to eq 3 
    end

    it "returns zero if contents is empty" do
        diary_entry = DiaryEntry.new("my_title", "")
        expect(diary_entry.count_words).to eq 0
    end   
  end

  describe "#reading_time" do
    context "given a wpm of some sensible number (200)" do
      it "returns ceiling of the number of mins to read contents" do
        diary_entry = DiaryEntry.new("my_title", "one " * 550)
        expect(diary_entry.reading_time(200)).to eq 3 
      end
    end

    context "given a wpm of zero" do
        it "fails" do
          diary_entry = DiaryEntry.new("my_title", "one " * 550)
          expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero"
        end
    end
  end  
   # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
  describe "#reading_chunk" do
    context "with contents readable within the given minutes" do
        it "returns the full contents" do
            diary_entry = DiaryEntry.new("my_title", "one two three")
            chunk = diary_entry.reading_chunk(200, 1)
            expect(chunk).to eq "one two three"
        end
    end

    context "with contents unreadable within the time"
        it "returns a readable chunk" do
            diary_entry = DiaryEntry.new("my_title", "one two three")
            chunk = diary_entry.reading_chunk(2, 1)
            expect(chunk).to eq "one two"
        end
    
        it "returns the next chunk, next time we're asked" do
            diary_entry = DiaryEntry.new("my_title", "one two three")
            diary_entry.reading_chunk(2, 1)
            chunk = diary_entry.reading_chunk(2, 1)
            expect(chunk).to eq "three"
        end

        it "restarts after reading the whole contents" do
            diary_entry = DiaryEntry.new("my_title", "one two three")
            diary_entry.reading_chunk(2, 1)
            diary_entry.reading_chunk(2, 1)
            chunk = diary_entry.reading_chunk(2, 1)
            expect(chunk).to eq "one two"
        end
    end
end  
