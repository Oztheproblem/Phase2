require "diary"
require "diary_entry"

RSpec.describe "integration" do
  context "after adding sme entries" do
    it "lists out the entries added" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title", "my contents")  
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 3")  
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end

    context "counts words" do
        it "counts the words in all diary entries' contents" do
          diary = Diary.new
          diary_entry_1 = DiaryEntry.new("my title", "my contents")  
          diary_entry_2 = DiaryEntry.new("my title 2", "my contents 3")  
          diary.add(diary_entry_1)
          diary.add(diary_entry_2)
          expect(diary.count_words).to eq 5
        end  
    end  
  end
end
