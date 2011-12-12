package net.cantooce.dietguru;

public class DietGuru {
    public static void main(String[] args) {
        System.out.println("Diet Guru!");
        basicTypes();
    }

    private static boolean basicTypes() {
        System.out.println("\nBasic types:\n------------");
        byte b_value = 127;
        short s_value = (short) power(2);
        int i_value = (int) power(4);
        long l_value = power(8);

        System.out.println("Byte:  " + b_value);
        System.out.println("Short: " + s_value);
        System.out.println("Int:   " + i_value);
        System.out.println("Long:  " + l_value);

        return true;
    }

    private static long power(int n) {
        final int base = 256;
        long result = 1;
        for (int i = 0; i < n - 1; i++)
            result *= base;
        return result / 2 * base - 1;
    }
}

