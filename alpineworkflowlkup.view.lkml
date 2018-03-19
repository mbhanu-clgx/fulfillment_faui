view: alpineworkflowlkup {
  sql_table_name: public.alpineworkflowlkup ;;

  dimension: addedbyuser {
    type: string
    sql: ${TABLE}.addedbyuser ;;
  }

  dimension_group: insertdt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.insertdt ;;
  }

  dimension: workflowdesc {
    type: string
    sql: ${TABLE}.workflowdesc ;;
  }

  dimension: workflowid {
    type: number
    value_format_name: id
    sql: ${TABLE}.workflowid ;;
  }

  dimension: workflowname {
    type: string
    sql: ${TABLE}.workflowname ;;
  }

  dimension: workflowver {
    type: string
    sql: ${TABLE}.workflowver ;;
  }

  measure: count {
    type: count
    drill_fields: [workflowname]
  }
}
