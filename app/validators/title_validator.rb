class TitleValidator < ActiveModel::Validator
    
    CLICKBAIT= [
        "Won't Believe",
        "Secret",
        "Top[number]",
        "Guess"
    ]
  
    def validate(record)
       # unless [ "Won't Believe", "Secret", "Top 0", "Top 1", "Top 2", "Top 3", "Top 4", "Top 5", "Top 6", "Top 7", "Top 8", "Top 9", "Guess" ].any? { |phrase| record.title.include?(phrase) }
            #record.errors[:title] << "Post Must Be Clickbait!"
        #end
        if record.title.present? && CLICKBAIT.none? {|p| record.title.match(p)}
            record.errors[:title] << "Not ClickBait"
        end

    end
end