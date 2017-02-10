connection: "postgres1"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: rt_test2 {
  join: running_total_amount {
    relationship: one_to_one
    sql_on: ${rt_test2.vintage}=${running_total_amount.rt_test2_vintage} AND ${rt_test2.rev_date}=${running_total_amount.rt_test2_rev_date} ;;
  }

join: running_total_vintage {
  relationship: one_to_one
  sql_on: ${rt_test2.vintage}=${running_total_vintage.rt_test2_vintage} AND ${rt_test2.rev_date}=${running_total_vintage.rt_test2_rev_date} ;;
}
}
