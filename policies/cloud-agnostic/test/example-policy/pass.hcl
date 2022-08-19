mock "time" {
  data = {
    now = {
      weekday_name = "Monday"
      hour         = 12
    }
  }
}

test {
  rules = {
    main          = true
    is_open_hours = true
    is_weekday    = true
  }
}
