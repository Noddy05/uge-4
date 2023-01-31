

void setup(){
  String[] input = loadStrings("tekst.txt");
  for(int i = 0; i < input.length; i++){
    println(input[i]);
  }
  
  addLine();
}

void addLine(){
  String[] input = loadStrings("tekst.txt");
  String[] newInput = new String[input.length + 2];
  for(int i = 0; i < input.length; i++){
    newInput[i] = input[i];
  }
  newInput[newInput.length - 2] = day() + "/" + month() + "/" + year();
  newInput[newInput.length - 1] = hour() + ":" + minute() + ":" + second();
  
  saveStrings("tekst.txt", newInput);
}
