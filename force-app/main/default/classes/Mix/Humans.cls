public class Humans {
    public string fullName(string firstName, string lastName){
        string fullName = '';
        fullName = firstName.toUpperCase();
        fullName += ' ' + lastName.toUpperCase();
        return fullName;
    }
}