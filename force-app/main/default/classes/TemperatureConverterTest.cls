@IsTest
private class TemperatureConverterTest {

    @IsTest
    static void testCelsiusToFahrenheit_Freezing() {
        Decimal result = TemperatureConverter.celsiusToFahrenheit(0);
        System.assertEquals(32.00, result, 'Freezing point: 0C should equal 32F');
    }

    @IsTest
    static void testCelsiusToFahrenheit_Boiling() {
        Decimal result = TemperatureConverter.celsiusToFahrenheit(100);
        System.assertEquals(212.00, result, 'Boiling point: 100C should equal 212F');
    }

    @IsTest
    static void testCelsiusToFahrenheit_Crossover() {
        Decimal result = TemperatureConverter.celsiusToFahrenheit(-40);
        System.assertEquals(-40.00, result, 'Crossover point: -40C should equal -40F');
    }

    @IsTest
    static void testCelsiusToKelvin_Freezing() {
        Decimal result = TemperatureConverter.celsiusToKelvin(0);
        System.assertEquals(273.15, result, 'Freezing point: 0C should equal 273.15K');
    }

    @IsTest
    static void testCelsiusToKelvin_AbsoluteZero() {
        Decimal result = TemperatureConverter.celsiusToKelvin(-273.15);
        System.assertEquals(0.00, result, 'Absolute zero: -273.15C should equal 0K');
    }

    @IsTest
    static void testFahrenheitToCelsius_Boiling() {
        Decimal result = TemperatureConverter.fahrenheitToCelsius(212);
        System.assertEquals(100.00, result, 'Boiling point: 212F should equal 100C');
    }

    @IsTest
    static void testFahrenheitToCelsius_Freezing() {
        Decimal result = TemperatureConverter.fahrenheitToCelsius(32);
        System.assertEquals(0.00, result, 'Freezing point: 32F should equal 0C');
    }

    @IsTest
    static void testFahrenheitToKelvin_Freezing() {
        Decimal result = TemperatureConverter.fahrenheitToKelvin(32);
        System.assertEquals(273.15, result, 'Freezing point: 32F should equal 273.15K');
    }

    @IsTest
    static void testKelvinToCelsius_AbsoluteZero() {
        Decimal result = TemperatureConverter.kelvinToCelsius(0);
        System.assertEquals(-273.15, result, 'Absolute zero: 0K should equal -273.15C');
    }

    @IsTest
    static void testKelvinToCelsius_Boiling() {
        Decimal result = TemperatureConverter.kelvinToCelsius(373.15);
        System.assertEquals(100.00, result, 'Boiling point: 373.15K should equal 100C');
    }

    @IsTest
    static void testKelvinToFahrenheit_AbsoluteZero() {
        Decimal result = TemperatureConverter.kelvinToFahrenheit(0);
        System.assertEquals(-459.67, result, 'Absolute zero: 0K should equal -459.67F');
    }

    @IsTest
    static void testKelvinToCelsius_NegativeThrowsException() {
        try {
            TemperatureConverter.kelvinToCelsius(-1);
            System.assert(false, 'Expected IllegalArgumentException was not thrown');
        } catch (IllegalArgumentException e) {
            System.assert(e.getMessage().contains('Kelvin cannot be negative'), 'Unexpected message: ' + e.getMessage());
        }
    }

    @IsTest
    static void testKelvinToFahrenheit_NegativeThrowsException() {
        try {
            TemperatureConverter.kelvinToFahrenheit(-1);
            System.assert(false, 'Expected IllegalArgumentException was not thrown');
        } catch (IllegalArgumentException e) {
            System.assert(e.getMessage().contains('Kelvin cannot be negative'), 'Unexpected message: ' + e.getMessage());
        }
    }
}