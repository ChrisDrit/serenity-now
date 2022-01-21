module PatientsHelper
  def red_light_green_light(goals)
    color = goals.present? ? 'green' : 'red'
    "<span style='color: #{color};'>●</span>".html_safe
  end
end
