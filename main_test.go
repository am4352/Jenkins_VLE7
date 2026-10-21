
package main
// testing testing testing
import "testing"

func TestMultiply(t *testing.T) {
	result := Multiply(5, 4)
	expected := 20

	if result != expected {
		t.Errorf("Multiply(5, 4) = %d; want %d", result, expected)
	}
}

func TestMultiplyByZero(t *testing.T) {
	result := Multiply(10, 0)
	expected := 0

	if result != expected {
		t.Errorf("Multiply(10, 0) = %d; want %d", result, expected)
	}
}

func TestMultiplyNegativeNumbers(t *testing.T) {
	result := Multiply(-3, 4)
	expected := -12

	if result != expected {
		t.Errorf("Multiply(-3, 4) = %d; want %d", result, expected)
	}
}
