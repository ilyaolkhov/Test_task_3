class Finance{
  int money;
  String description;
  Finance({required this.money, required this.description,});
}

class FinanceInfo{
  static List<Finance> getFinanceInfo(){
    return [
      Finance(money: 5700, description: 'Деньги в ТА'),
      Finance(money: 1255, description: 'Сдача'),
      Finance(money: 1255, description: 'Деньги в ТА')
    ];
  }
}