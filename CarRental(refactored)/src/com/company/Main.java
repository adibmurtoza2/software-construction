package com.company;

public class Main {

    public static void main(String[] args) {
        // write your code here
        Car car1 = new Car("Ferrari",0);
        Car car2 = new Car("Bezza",1);
        Car car3 = new Car("Alza",2);

        Rental rental1= new Rental(car1,10);
        Rental rental2= new Rental(car2,5);

        Customer customer1=new Customer("Zahid");
        customer1.addRental(rental1);
        customer1.addRental(rental2);
        long startTime = System.nanoTime();
        customer1.statement();
        long endTime = System.nanoTime();
        System.out.println(customer1.statement());
        long duration = (endTime - startTime);
        System.out.println("Execution Time:"+ duration);

    }
}
