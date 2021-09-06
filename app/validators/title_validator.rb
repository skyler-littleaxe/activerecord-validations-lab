class TitleValidator < ActiveModel::Validator
    
    def validate(record)
        clickbait = [
            "Won't Believe",
            "Secret",
            "Top[number]",
            "Guess"]
        #unless CLICKBAIT.any? { |phrase| record.title.match(phrase) }
            #record.errors[:title] << "Post Must Be Clickbait!"
        #end
        if record.title.present? && clickbait.none? {|p| record.title.match(p)}
            record.errors[:title] << "Not ClickBait"
        end

    end
end