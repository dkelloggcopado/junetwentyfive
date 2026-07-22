public with sharing class TemperatureConverter{

    public static Decimal celsiusToFahrenheit(Decimal celsius) {
        return ((celsius * 9 / 5) + 32).setScale(2);
    }

    public static Decimal celsiusToKelvin(Decimal celsius) {
        return (celsius + 273.15).setScale(2);
    }

    public static Decimal fahrenheitToCelsius(Decimal fahrenheit) {
        return ((fahrenheit - 32) * 5 / 9).setScale(2);
    }

    public static Decimal fahrenheitToKelvin(Decimal fahrenheit) {
        return (((fahrenheit - 32) * 5 / 9) + 273.15).setScale(2);
    }

    public static Decimal kelvinToCelsius(Decimal kelvin) {
        if (kelvin < 0) {
            throw new IllegalArgumentException('Kelvin cannot be negative.');
        }
        return (kelvin - 273.15).setScale(2);
    }

    public static Decimal kelvinToFahrenheit(Decimal kelvin) {
        if (kelvin < 0) {
            throw new IllegalArgumentException('Kelvin cannot be negative.');
        }
        return (((kelvin - 273.15) * 9 / 5) + 32).setScale(2);
    }
}