//Создайте по 2 enum с разным типом RawValue
enum color: String 
{
    case white, black, red, blue, brown, yellow
}
enum animals: String 
{
    case cat, dog, hamster, horse, cow, pig
}
enum directions: Int 
{
    case forward=1, to_the_right, backward, to_the_left
}
enum courses: Int 
{
    case first=1, second, third, forth
}

//Создайте несколько enum для заполнения полей стркутуры - анкета сотрудника: enum пол, enum категория возраста, enum стаж
enum gender 
{
    case male, female
}
enum age 
{
    case under_twenty, twenty_to_thirty, thirty_to_forty, more_than_forty
}
enum experience 
{
    case student, junior, middle, senior
}
struct Employee 
{
    var name: String
    var gender: gender
    var ageCategory: age
    var experience: experience
}
//Создать enum со всеми цветами радуги
enum RainbowColor: Int 
{
    case red = 1, orange, yellow, green, light_blue, blue, purple
}
//Создать функцию, которая содержит массив разных case'ов enum и выводит содержимое в консоль. Пример результата в консоли 'apple green', 'sun red' и т.д.
enum food: String 
{
    case apple, orange, cabbage, banana, carrot, pumpkin, tomato
}
enum colors: String 
{
    case white, black, red, blue, brown, yellow, green, orange
}
func print_color_of_food() 
{
    let food = [food.apple, food.orange, food.banana, food.carrot, food.pumpkin, food.cabbage, food.tomato]
    let colors = [colors.black, colors.white, colors.red, colors.green, colors.blue, colors.yellow, colors.brown, colors.orange]
    for i in 0..<min(food.count, colors.count) {
        print("\(food[i].rawValue) \(colors[i].rawValue)")
    }
}

print_color_of_food()
//Создать функцию, которая выставляет оценки ученикам в школе, на входе принимает значение enum Score: String {<Допишите case'ы} и выводит числовое значение оценки
enum score: String 
{
    case excellent, good, average, poor
}
func print_score(score: score) 
{
    switch score 
    {
    case .excellent:
        print("5")
    case .good:
        print("4")
    case .average:
        print("3")
    case .poor:
        print("2")
    }
}

print_score(score: score.excellent)
print_score(score: score.good)
print_score(score: score.average)
print_score(score: score.poor)
//Создать метод, которая выводит в консоль какие автомобили стоят в гараже, используйте enum
enum cars: String {
    case ab123c, df032d, as130s, ha914n, fl717y
}

func print_cars_in_garage(cars: [cars]) {
    for car in cars {
        print(car.rawValue)
    }
}

print_cars_in_garage(cars: [cars.ha914n, cars.fl717y])
