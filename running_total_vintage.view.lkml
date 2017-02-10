view: running_total_vintage {
  derived_table: {
    sql: SELECT
        rt_test2.vintage  AS "rt_test2.vintage",
        DATE(rt_test2.rev ) AS "rt_test2.rev_date",
        rt_test2.vintage_amount AS "rt_test2.vintage_amount",
        sum(rt_test2.vintage_amount) over (partition by rt_test2.rev) as "rt_vintage"
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

  dimension: rt_vintage {
    type: number
    sql: ${TABLE}.rt_vintage ;;
  }

  measure: running_total_vintage {
    type: sum
    sql: ${rt_vintage} ;;
  }

  set: detail {
    fields: [rt_test2_vintage, rt_test2_rev_date, running_total_vintage]
  }
}
