#import <Foundation/Foundation.h>

#define MY_AGE 27
#define DAYS_IN_YEAR 365.25
    
    int main(int argc, const char * argv[]) {
        void Homework1();
        void Homework2();
        
        Homework1();
        Homework2();
        
        return 0;
    }


void Homework1()
{
    NSLog(@"=== Homework 1 ===");
    
    int myAgeInTenYears = MY_AGE + 10;
    float daysPassed = myAgeInTenYears * DAYS_IN_YEAR;
    NSLog(@"After 10 years I'll be %i years old, and it will be %.2f days passed from my birth.", myAgeInTenYears, daysPassed);
    
    unsigned firstVar = 2929;
    unsigned secondVar = 2333;
    int result = firstVar / secondVar;
    int remainder = firstVar % secondVar;
    NSLog(@"Division %u by %u equals %i, remainder is %i", firstVar, secondVar, result, remainder);
    NSLog(@"Division %u by %u equals %i %i/%u", firstVar, secondVar, result, remainder, secondVar);
    
    NSString *firstPart = @"I can";
    NSString *secondPart = @"code";
    NSLog(@"%@ %@!", firstPart, secondPart);
}

typedef enum
{
    Addition,
    Substruction,
    Multiplication,
    Division
} CalculationType;

void Homework2()
{
    int Calculate(int num1, int num2, CalculationType operation);
    unsigned long quadMultiplier(unsigned long number);
    int recursiveFactorial(int number);

    NSLog(@"=== Homework 2 ===");
    int num1 = 5, num2 = 6;
    NSLog(@"Result %i + %i equals %i", num1, num2, Calculate(num1, num2, Addition));
    
    num1 = 145, num2 = 63;
    NSLog(@"Result %i - %i equals %i", num1, num2, Calculate(num1, num2, Substruction));
    
    num1 = 558, num2 = 127;
    NSLog(@"Result %i * %i equals %i", num1, num2, Calculate(num1, num2, Multiplication));
    
    num1 = 277569, num2 = 3;
    NSLog(@"Result %i / %i equals %i", num1, num2, Calculate(num1, num2, Division));
    
    for (int i = 1; i <= 20; i++) {
        unsigned long testNumber = quadMultiplier(i);
        
        if (testNumber == 16)
        {
            break;
        }
        
        if (testNumber % 3 == 0)
        {
            NSLog(@"%i is a multiple of 3", i);
            continue;
        }
        
        NSLog(@"%i iterations left.", 21 - i);
    }
    
    int testNum = 3;
    NSLog(@"Factorial of %i is %i", testNum, recursiveFactorial(testNum));
    
    testNum = 27;
    NSLog(@"Factorial of %i is %i", testNum, recursiveFactorial(testNum));
}

int Calculate(int num1, int num2, CalculationType operation)
{
    switch(operation)
    {
        case Addition:
            return num1 + num2;
        case Substruction:
            return num1 - num2;
        case Multiplication:
            return num1 * num2;
        case Division:
            return num1 / num2;
    }
}

unsigned long quadMultiplier(unsigned long number)
{
    return number * 4;
}

int recursiveFactorial(int number)
{
    if (number == 1)
    {
        return 1;
    }
    
    return number * recursiveFactorial(number - 1);
}