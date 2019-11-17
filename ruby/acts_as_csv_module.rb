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
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.csv'
      file = File.new(filename)
      @headers = file.gets.chomp.split(',').map { |str| str.strip }

      file.each do |row|
        @csv_contents << row.chomp.split(',').map { |str| str.strip }
      end
    end

    attr :headers, :csv_contents
    def initialize
      read
    end

    class CsvRow
      def method_missing name, *args, &block
        @lookup[name]
      end
      
      def initialize headers, values
        @lookup = Hash[ to_keypairs headers, values ]
      end

      private

      def to_keypairs headers, values
        headers.map
          .with_index { |header,index| [ header.to_sym, values[index] ] }
      end
    end

    
    define_method "each" do |&block|
      @csv_contents.each do |row|
        block.call CsvRow.new(@headers, row)
      end
    end
  end

end

class Example
  include ActsAsCsv
  acts_as_csv
end

csv = Example.new
csv.each { |row| puts row.two }
