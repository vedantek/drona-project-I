provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "testAWSkeyNew" {
  key_name   = "testAWSkeyNew-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDQ2EvbboccsVs7KT7JBbA6ZK4d8h/azBQn/F2tvznkdzIe0GEXNp3efiY2fub8CE++Ueve1G1xWRTS/VJb1sCF4kVvmrshPwaoXziHhG4gwzpOpHLhT8NTZp7ZeTeG52KPQyX6JeXAWfBK9TUIBp2gXhKrKgRdV+1BuUh3ZqeHIPuD+kkktRmetv5jUCZSgGDosxGzl3uz7a1oLLlAEjjoXLq1zDQM3ou2OD5o0Trhd9CEIvCBVT0mdBlFZnrLWA2xN63uTG9yLzOjD5s/Wnoh+XPuzvRa9pesuGmzN0CH8cVWRBTWoH9PV7yDdsqN7QgElO6+IXa74RoLFYJmdAErkIfwG7v4CAmiIutgPyIH9NxNGys3S8soVPeBeUtPHcaMbcgqdojzTA0MKTRB941nbRZw38fUdgtaGi8jsmYwplJNYhi3RaHFIoPT8r6mYxHwyfJ7YCIv3VIULuRKvHxtRSjEG/zX/wm5zTtoTk8D5rL8BsfIT13oFt3/uom9diE= Santosh@DESKTOP-7IPT8QB"
}