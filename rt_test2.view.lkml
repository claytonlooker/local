view: rt_test2 {
  sql_table_name: public.rt_test2 ;;

  dimension_group: rev {
    type: time
   # timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.rev ;;
  }

  dimension: vintage {
    type: string
    sql: ${TABLE}.vintage ;;
  }

  dimension: vintage_amt {
    type: number
    sql: ${TABLE}.vintage_amount ;;
    value_format_name: usd
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
    value_format_name: usd
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: amount_measure {
    type: number
    sql: ${amount} ;;

  }

  measure: amount_measure_sum {
    type: sum
    sql: ${TABLE}.amount ;;
    value_format_name: usd

  }

  measure: settlement_ratio {
    type: number
    sql: 1.0*${running_total_amount.running_total_amount} / ${running_total_vintage.running_total_vintage} ;;
    value_format_name: percent_2
  }

#   measure: running_total {
#     type: running_total
#     sql: ${amount} ;;
#     direction: "column"
#     value_format_name: usd
#
#   }
#
#   measure: rt_vintage {
#     type: running_total
#     sql: ${vintage_amt} ;;
#     direction: "column"
#     value_format_name: usd
#
#   }
}
