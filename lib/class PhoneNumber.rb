class PhoneNumber
    def initialize(diary)
        @diary = diary
    end

    def extract_numbers
        return @diary.entries.map do |entry|
            extract_numbers_from_entry(entry)
        end
    end
    
    private

    def extract_numbers_from_entry(entry)
        return entry.contents.scan(/07[09]{09})
    end
end