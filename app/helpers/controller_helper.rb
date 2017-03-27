module ControllerHelper
  def generate_csv_data(collektion, options = {})
    CSV.generate(options) do |csv|
      csv << options[:headers] if options[:headers].present?
      collektion.each do |ob|
        csv << yield(ob)
      end
    end
  end
end
