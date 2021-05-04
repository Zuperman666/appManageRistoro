class Food {
  final List<Details> dettagli;

  Food({
    this.dettagli,
  });

  factory Food.fromJson(List<dynamic> parsedJson) {

    List<Details> dettagli = new List<Details>();
    dettagli = parsedJson.map((i)=>Details.fromJson(i)).toList();

    return new Food(
      dettagli: dettagli,
    );
  }
}

class Details {
  final String details;
  final String ingredienti;
  final String nome;
  Details({this.details, this.ingredienti,this.nome});
  factory Details.fromJson(Map<String, dynamic> parsedJson){
    return Details(
        details:parsedJson['descrizione'],
        ingredienti:parsedJson['ingredienti'],
        nome:parsedJson['nome']
    );
  }
}


