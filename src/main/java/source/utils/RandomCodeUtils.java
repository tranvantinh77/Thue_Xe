package source.utils;

import java.util.Random;

public class RandomCodeUtils {

    public static String codeOto() {
        int x = (int) (Math.random() * 11);
        int random_int = (int) (Math.random() * (999999999 - 100000000 + x) + 100000000);
        String code ="CAR-RENTAL" + random_int;
        return code;
    }

    public static void main(String[] args) {
        for(int i = 1 ; i<=160; i++){
            System.out.println(i + "    " + codeOto());
        }
    }
}
