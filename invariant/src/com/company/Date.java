package com.company;

public class Date {
    int /*@spec_public@*/ day;
    int /*@spec_public@*/ hour;

    /*@invariant day >= 1 && day <= 31; @*/ //class invariant
    /*@invariant hour >= 0 && hour <= 23; @*/ //class invariant

    /*@
    @requires d >= 1 && d <= 31;
    @requires h >= 0 && h <= 23;
    @*/
    public Date(int d, int h) { // constructor
        day = d;
        hour = h;
    }

    /*@
    @requires d >= 1 && d <= 31;
    @ensures day == d;
    @*/
    public void setDay(int d) {
        day = d;
    }

    /*@
    @requires h >= 0 && h <= 23;
    @ensures hour == h;
    @*/
    public void setHour(int h) {
        hour = h;
    }
}
