package com.company;

public class Car {
    public static final int SUV = 2;
    public static final int SPORT = 0;
    public static final int SEDAN = 1;
    private String _title;
    private Price _price;
    public Car(String title, int priceCode) {
        _title = title;
        setPriceCode(priceCode);
    }
    public int getPriceCode() {
        return _price.getPriceCode();
    }
    public void setPriceCode(int arg) {
        switch (arg) {
            case Car.SPORT:
                _price = new Sport();
                break;
            case Car.SUV:
                _price = new SUV();
                break;
            case Car.SEDAN:
                _price = new Sedan();
                break;
            default:
                throw new IllegalArgumentException("Incorrect Price Code");
        }
    }
    public String getTitle() {
        return _title;
    }
    double getCharge(int daysRented) {

        return _price.getCharge(daysRented);
    }
    int getFrequentRenterPoints(int daysRented){
        return _price.getFrequentRenterPoints(daysRented);
    }
}