mock "time" {
  data = {
    now = {
      weekday_name = "Saturday"
      hour         = 12
    }
  }
}
// mock "time" {
//   module {
//     source = "./mock-time.sentinel"
//   }
// }
test {
  rules = {
     main = false
   }
}
