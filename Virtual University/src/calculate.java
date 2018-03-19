import java.util.*;
public class calculate
{
    public static void main(String a[]){
        Random r = new Random();
        int s = (Math.abs(r.nextInt())%10)+1;
        int j = 10+s;
        for(int i = s; i<j; i++){
             System.out.println(i);
             if(i>10)
               j=1;
        }

    }
}