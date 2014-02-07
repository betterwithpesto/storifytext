class ResultsPage

  attr_reader :plaintext

  def initialize(params)
    url = params[:storify]
    if !url.include? ".html"
      url+=".html"
    end
    @plaintext = Nokogiri::HTML(open(url))
  end

end
