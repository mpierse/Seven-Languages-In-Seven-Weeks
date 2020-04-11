#example
class CsvRow
    def initialize(indexVal, text)
        @indexVal = indexVal
        @text = text
    end

    attr_accessor :indexVal, :text 

    def method_missing name, *args
        method_name = name.to_s
        
        @text[method_name.to_i]
    end
end

module ActsAsCsv
    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        def read(filename)
            @csv_contents = []
            @csv_el_contents = []
            file = File.new(filename)
            @headers = file.gets.chomp.split(', ')

            file.each do |row|
                @csv_contents << row.chomp.split(', ')
            end

            @csv_contents.each do |el|
                @csv_el_contents << CsvRow.new(@csv_contents.index(el),@csv_contents)
            end
        end

        attr_accessor :headers, :csv_contents, :filename
        def initialize(filename)
            read(filename)
        end

        def each(&block)
            @csv_el_contents.each do |row|
                block.call row
            end
        end 
    end
end

class RubyCsv
    include ActsAsCsv
    acts_as_csv
end

m = RubyCsv.new("sample.txt")
puts m.headers.inspect
puts m.csv_contents.inspect
m.each {|row| puts row.one}