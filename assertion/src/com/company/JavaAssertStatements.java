package com.company;

public class JavaAssertStatements {

    public static void main(String[] args) {
        int[] toSum = {2,3,4,5};
        System.out.println(sumArray(toSum));
    }

    public static int sumArray(int[] nums){
        assert nums.length > 0 && nums[0] > 3 : "The first number is too small";
        int total = 0;
        for (int i = 0; i < nums.length; i++){
            total += nums[i];
        }
        return total;
    }
}
