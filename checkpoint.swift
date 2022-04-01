struct Car {
  private let model = "BMW"
  private let seat = 2
  private var gear : Int?

  mutating func changeGear(_ gear: Int){
    self.gear = gear
  }

  mutating func result(){
    if self.gear ?? 1 >= 10{
      print("The \(model) car with \(seat) seat & \(self.gear ?? 1) gear is very fast, not safe")
    }else if self.gear ?? 1 == 0{
       print("Is a netral")
    }else{
       print("The \(model) car with \(seat) seat & \(self.gear ?? 1) gear is safe")
    }
  }

}

var car = Car()
// car.changeGear(1)
car.changeGear(10)
car.result()