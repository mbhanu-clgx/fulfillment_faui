view: users {
  sql_table_name: public.users ;;

  dimension: userid {
    primary_key: yes
    type: number
    sql: ${TABLE}.userid ;;
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

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: userpassword {
    type: string
    sql: ${TABLE}.userpassword ;;
  }

  measure: count {
    type: count
    drill_fields: [userid, username]
  }
}
