import java.io.*;
import java.util.*;
import java.Math.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner s = new Scanner(System.in);

        int tests = s.nextInt();
        for ( int i = 0; i < tests; i++){
            int num = s.nextInt();
            int[] array = new int[num];
            int[] memo = new int[num];
            for ( int j = 0 ; j < num ; j++){
                array[j] = s.nextInt();

            }
           memo[0] = array[0];
           for(int j = 1; j < num; j++ ){
               memo[j] = math memo[0]
           }


        }



    }
}
