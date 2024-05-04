
bool isValidPassword(String? inputString,{bool isRequired=false}){
  bool isInputStringValid=false;
  if(!isRequired && (inputString==null ? true : inputString.isEmpty )){
    isInputStringValid=true;
  }
  if(inputString!=null && inputString.isNotEmpty){
    const pattern=r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^\w\s]).{8,}$';
    final reqExp=RegExp(pattern);
    isInputStringValid=reqExp.hasMatch(inputString);
  }
  return isInputStringValid;
}