module ParseInfo
    # Only used at Nation, Gugun, Local model

    DIRECT_RETURN_CLASSES = [Integer, Float, TrueClass, FalseClass, NilClass, Array, Hash]
    def load_data
        data.each do |key, value|
            class_eval %Q(
                def #{key}
                    #{value} if #{value.class}.in? DIRECT_RETURN_CLASSES
                    '#{value}' if #{value.class} == String
                end
            )
        end
    end

    def data
        JSON.parse self.info
    end

    def labels
        json = JSON.parse self.info
        labels = json.keys
        labels.map{|s| s.to_sym}
    end
end