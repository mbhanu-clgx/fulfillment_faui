view: customer {
  sql_table_name: public.customer ;;

  dimension: customerid {
    primary_key: yes
    type: number
    sql: ${TABLE}.customerid ;;
  }

  dimension: addedbyuser {
    type: string
    sql: ${TABLE}.addedbyuser ;;
  }

  dimension: contactemail {
    type: string
    sql: ${TABLE}.contactemail ;;
  }

  dimension: customerbu {
    type: string
    sql: ${TABLE}.customerbu ;;
  }

  dimension: customername {
    type: string
    sql: ${TABLE}.customername ;;
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

  dimension_group: updatedt {
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
    sql: ${TABLE}.updatedt ;;
  }

  measure: count {
    type: count
    drill_fields: [customerid, customername]
  }
}
