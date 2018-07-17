def housing_report(city, subdivisions, houses)
  total_houses = houses * subdivisions

  report = "For #{ city }, if there are #{ houses } houses per subdivision, and there are #{ subdivisions } subdivisions, then we need to build #{ total_houses } houses."

  return report
end

toronto_report = housing_report('Toronto', 33, 20)
puts toronto_report

vancouver_subdivisions = 20
vancouver_houses = 15
vancouver_report = housing_report('Vancouver', vancouver_subdivisions, vancouver_houses)
puts vancouver_report
