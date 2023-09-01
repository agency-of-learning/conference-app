class MainDashboard < Avo::Dashboards::BaseDashboard
  self.id = "main_dashboard"
  self.name = "Main dashboard"
  self.description = "Main dashboard"
  # self.grid_cols = 3
  # self.visible = -> do
  #   true
  # end

  # cards go here
  card UsersMetric
  card UsersChart
end
