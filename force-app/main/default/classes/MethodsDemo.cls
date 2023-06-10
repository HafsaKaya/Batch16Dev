public class MethodsDemo {
    public void welcomeMessage() {
        system.debug('Hi there, welcome to the world');
    }

    public void samplePrintMessage(string msg){
        system.debug(msg);
    }

    public void newMessage(string name){
        system.debug('Hi ' + name + ', welcome to the world of apex!');
    }
}