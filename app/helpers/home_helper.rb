module HomeHelper
  def chart_amount_covid_state
    series = [
      { name: "Total de casos", data: @covid_cases.sum(:amount).sort_by {|k, v| -v} }
    ]
    
    options = {
      title: 'Total de casos COVID por Estado',
      subtitle: '',
      xtitle: '',
      ytitle: '',
      stacked: true
    }

    column_chart(series, options)
  end

  def chart_covid_cases_state
    series = [
      { name: "Total de mortes", data: @covid_cases.sum(:death) },
      { name: "Total de curados", data: @covid_cases.sum(:cured) },
      { name: "Total de suspeitos", data: @covid_cases.sum(:suspect) }
    ]
    
    options = {
      title: 'Total de casos mortes x curados x suspeitos',
      subtitle: '',
      xtitle: '',
      ytitle: '',
      colors: ["#E74C3C", "#1ABC9C", "#F4D03F"],
      dataLabels: {
        enabled: false,
      }
    }
    
    area_chart(series, options)
  end
end
