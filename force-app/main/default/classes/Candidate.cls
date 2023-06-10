public class Candidate {
    public string name;
    public string gender;
    public static integer count = 0;
    public static string companyName;

    public candidate(){
        count++;
    }

    public void details(){
        system.debug('name is ' + name);
        system.debug('gender is ' + gender);
        system.debug('companyName is ' + companyName);
        system.debug('--------');
        system.debug('count is ' + count);
        system.debug('--------');
        system.debug('******');
    }
}