package com.company;

public class Sport extends Price {
    int getPriceCode() {
        return Car.SPORT;
    }
    double getCharge(int daysRented){
        return daysRented * 3;
    }

    int getFrequentRenterPoints(int daysRented){
        return (daysRented > 1) ? 2: 1;
    }
}
