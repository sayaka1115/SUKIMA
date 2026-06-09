module LecturesHelper
  def getPercent(number)
    if number.present?
      calPercent = number / 5.to_f * 100
      percent = calPercent.round
      percent.to_s
    else
      0
    end
  end
end