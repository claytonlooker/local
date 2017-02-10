- dashboard: db1
  title: Db1
  layout: tile
  tile_size: 100
#   rows:
#   - elements: [tile1,tile2]

  elements:

  - name: tile1
    title: Untitled Visualization
    type: looker_column
    model: rt_test2
    explore: rt_test2
    dimensions: [rt_test2.vintage]
    measures: [rt_test2.count]
    sorts: [rt_test2.count desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"

  - name: tile2
    title: Untitled Visualization2
    type: looker_column
    model: rt_test2
    explore: rt_test2
    dimensions: [rt_test2.rev_date]
    fill_fields: [rt_test2.rev_date]
    measures: [rt_test2.count]
    sorts: [rt_test2.rev_date]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
    rt_test2.count: "#f80f4a"
