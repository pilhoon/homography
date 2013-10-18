public class Jtest 
{
    static {
        System.loadLibrary("homographytest");
    }

    public native void showhomo(String a, String b);

    public static void sopl(String a) {
        System.out.println(a);
    }
    
    public static void sopl(int a) {
        sopl("Integer: ");
        System.out.println(a);
    }

    public static void main(String[] args)
    {
        sopl(args.length);
        
        if(args.length < 2)
        {
            sopl("insert two target files");
        }
        else
        {
            new Jtest().showhomo(args[0], args[1]);
        }
    }
}
