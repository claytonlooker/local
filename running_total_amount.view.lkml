view: running_total_amount {
  derived_table: {
    sql: SELECT
        rt_test2.vintage  AS "rt_test2.vintage",
        DATE(rt_test2.rev ) AS "rt_test2.rev_date",
        rt_test2.amount AS "rt_test2.amount",
        sum(rt_test2.amount) over (partition by rt_test2.rev) as "running_total"
      FROM public.rt_test2  AS rt_test2
      GROUP BY 1,2,3
       ;;
  }

  dimension: rt_test2_vintage {
    type: string
    sql: ${TABLE}."rt_test2.vintage" ;;
  }

  dimension: rt_test2_rev_date {
    type: date
    sql: ${TABLE}."rt_test2.rev_date" ;;
  }

  dimension: running_total {
    type: number
    sql: ${TABLE}.running_total ;;
  }

  measure: running_total_amount {
    type: sum
    sql: ${running_total} ;;
  }

  set: detail {
    fields: [rt_test2_vintage, rt_test2_rev_date, running_total]
  }
}
