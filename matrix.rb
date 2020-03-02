class Matrix

  attr_reader :rows, :columns

  def initialize(data)
    @rows = parse_rows(data)
    @columns = @rows.transpose
  end

  private

  def parse_rows(data)
    data.each_line.map { |line| line.split.map(&:to_i) }
  end
end
