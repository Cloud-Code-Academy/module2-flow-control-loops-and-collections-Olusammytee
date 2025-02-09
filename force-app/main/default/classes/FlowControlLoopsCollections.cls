/**
* This is the FlowControlLoopsCollections class, part of the Developer Kickstart Module 2 curriculum
* at Cloud Code Academy. This class focuses on flow control, loops, and collections in Apex programming.
* The class provides a comprehensive understanding of various flow control structures, including if statements,
* jump statements, and loops like for loops. It also covers working with collections such as lists and maps.
*
* Topics covered in this class include:
* - Understanding and using if statements to make conditional decisions in code execution.
* - Using jump statements like break and continue to control the flow of execution in loops and switch statements.
* - Working with for loops to iterate over a set of elements in Apex.
* - Understanding collections and using lists and maps to store and manipulate data.
*
* This class is designed for developers who have a basic understanding of Apex and want to deepen their knowledge
* in flow control, loops, and collections. By mastering these concepts, developers will be able to write more
* efficient and effective code in their Salesforce projects.
*
* @author Temitayo Oluwalade
*/

public with sharing class FlowControlLoopsCollections {
    
    /**
     * Question 1
     * Compares two numbers and return "Hello World!" if x is greater than the y.
     * If either of the numbers is null or x is less than y, return null.
     * Example: helloWorld(40, 10) should return "Hello World!"
     * @param x The first number.
     * @param y The second number.
     * @return "Hello World!" if x greater than y, otherwise return null.
     */
    public static String helloWorld(Integer x, Integer y) {
        if (x == null || y == null || x <= y) {
            return null;
        }
        return 'Hello World!';
    }

    /**
     * Question 2
     * Checks if a person is eligible to vote based on their age.
     * A person is eligible to vote if they are 18 years old or older.
     * Example: votingEligibility(18) should return true
     * @param age The age of the person.
     * @return true if the person is eligible to vote, false otherwise.
     */
    public static Boolean votingEligibility(Integer age) {
        return age >= 18;
    }

    /**
     * Question 3
     * Finds the maximum of two numbers.
     * If both numbers are equal, it returns that number.
     * Example: findMax(58, 200) should return 200
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The maximum of the two numbers, or null if either number is null.
     */
    public static Integer findMax(Integer num1, Integer num2) {
        if (num1 == null || num2 == null) {
            return null;
        }
        return num1 > num2 ? num1 : num2;
    }

    /**
     * Question 4
     * Checks if a number is positive, negative, or zero.
     * Example: checkNumber(5) should return "Positive"
     * @param a The number to check.
     * @return A string indicating whether the number is "Positive", "Negative", or "Zero", or null if the number is null.
     */
    public static String checkNumber(Integer a) {
        if (a == null) {
            return null;
        }
        if (a > 0) return 'Positive';
        if (a < 0) return 'Negative';
        return 'Zero';
    }

    /**
     * Question 5
     * Checks if a number is even or odd.
     * Example: checkEvenOdd(2) should return "Even"
     * @param a The number to check.
     * @return A string indicating whether the number is "Even" or "Odd", or null if the number is null.
     */
    public static String checkEvenOdd(Integer a) {
        if (a == null) {
            return null;
        }
        return Math.mod(a, 2) == 0 ? 'Even' : 'Odd';
    }

    /**
     * Question 6
     * Checks if a string is empty, null, or contains text.
     * Example: checkString("") should return "Empty"
     * @param a The string to check.
     * @return A string indicating whether the input is "Empty", "Null", or "Contains Text".
     */
    public static String checkString(String a) {
        if (a == null) {
            return 'Null';
        }
        if (a == '') {
            return 'Empty';
        }
        return 'Contains Text';
    }

    /**
     * Question 7
     * Determines the grade based on the score.
     * Example: determineGrade(85) should return "B"
     * @param score The score.
     * @return The grade for the given score.
     */
    public static String determineGrade(Integer score) {
        if (score >= 90) return 'A';
        if (score >= 80) return 'B';
        if (score >= 70) return 'C';
        if (score >= 60) return 'D';
        return 'F';
    }

    /**
     * Question 8
     * Sum all the integers up to a given limit.
     * Example: sumUpToLimit(5) should return 15
     * @param intLimit The number up to which integers will be summed.
     * @return The sum of all integers up to the limit.
     */
    public static Integer sumUpToLimit(Integer intLimit) {
        Integer sum = 0;
        for (Integer i = 1; i <= intLimit; i++) {
            sum += i;
        }
        return sum;
    }

    /**
     * Question 9
     * Generate String "Hello World!" three times, with each occurrence separated by a semicolon.
     * Example: returnHelloWorld() should return "Hello World!; Hello World!; Hello World!; "
     * @return The string "Hello World!; Hello World!; Hello World!; "
     */
    public static String returnHelloWorld() {
        String result = '';
        for (Integer i = 0; i < 3; i++) {
            result += 'Hello World!; ';
        }
        return result;
    }

    /**
     * Question 10
     * Generate a string where the input string is repeated the given number of times.
     * Example: repeatString("Hello World!", 3) should return "Hello World!; Hello World!; Hello World!"
     * @param inputString The string to be repeated.
     * @param repeatCount The number of times the string should be repeated.
     * @return The new string with the inputString repeated repeatCount times.
     */
    public static String repeatString(String inputString, Integer repeatCount) {
        String result = '';
        for (Integer i = 0; i < repeatCount; i++) {
            result += inputString;
            if (i < repeatCount - 1) {
                result += '; ';
            }
        }
        return result;
    }

    /**
     * Question 11
     * Creates a List of integers and adds the integers 1, 2, and 3 to it.
     * Example: createAndPopulateList() should return [1, 2, 3]
     * @return A List of integers containing the numbers 1, 2, and 3.
     */
    public static List<Integer> createAndPopulateList() {
        List<Integer> numbers = new List<Integer>();
        numbers.add(1);
        numbers.add(2);
        numbers.add(3);
        return numbers;
    }

    /**
     * Question 12
     * Creates a List of integers and adds the integers from 1 to 5. Then removes number 3.
     * Example: createAndRemoveFromList() should return [1, 2, 4, 5]
     * @return A List of integers from 1 to 5, excluding the number 3.
     */
    public static List<Integer> createAndRemoveFromList() {
        List<Integer> numberList = new List<Integer>{1, 2, 3, 4, 5};
        numberList.remove(2);
        return numberList;
    }

    /**
     * Question 13
     * Create a list filled with integers based on the input parameter.
     * Example: createIntegerList(5) should return [1, 2, 3, 4, 5]
     * @param n The last integer in the List.
     * @return A List of integers from 1 to 'n'.
     */
    public static List<Integer> createIntegerList(Integer n) {
        List<Integer> numbers = new List<Integer>();
        for (Integer i = 1; i <= n; i++) {
            numbers.add(i);
        }
        return numbers;
    }

    /**
     * Question 14
     * Remove duplicate values from the list of Strings.
     * Example: createStringSet(['a', 'b', 'a', 'c']) should return ['a', 'b', 'c']
     * @param inputList The List of strings.
     * @return A Set of unique strings.
     */
    public static Set<String> createStringSet(List<String> inputList) {
        Set<String> stringSet = new Set<String>();
        stringSet.addAll(inputList);
        return stringSet;
    }

    /**
     * Question 15
     * Iterates over a list of integers and sums only the positive integers.
     * Example: sumPositiveIntegers() should return 12
     * @return The sum of positive integers from the list.
     */
    public static Integer sumPositiveIntegers() {
        List<Integer> numbers = new List<Integer>{-1, 2, -3, 4, -5, 6};
        Integer sum = 0;
        for (Integer num : numbers) {
            if (num <= 0) continue;
            sum += num;
        }
        return sum;
    }

    /**
     * Question 16
     * Iterates over a list of strings and searches for a specific word.
     * Example: findWordInList("World", ['Hello', 'World', 'Goodbye']) should return 1
     * @param wordToFind The word to find in the list.
     * @param words The list of words to search.
     * @return The position of the word in the list or -1 if not found.
     */
    public static Integer findWordInList(String wordToFind, List<String> words) {
        for (Integer i = 0; i < words.size(); i++) {
            if (words[i] == wordToFind) {
                return i;
            }
        }
        return -1;
    }

    /**
     * Question 17
     * Counts money in wallet until it exceeds $40.
     * Example: countMoney() should return 48.02
     * @return The total value in dollars, stopped at the point when it exceeds 40 dollars.
     */
    public static Decimal countMoney() {
        List<Decimal> moneyInWallet = new List<Decimal>{0.50, 10, 3.84, 24.60, 9.08, 50, 4.90};
        Decimal total = 0;
        for (Decimal amount : moneyInWallet) {
            total += amount;
            if (total > 40) break;
        }
        return total;
    }

    /**
     * Question 18
     * Create a map with five fruit quantities.
     * Example: addItemsToMap() should return map with 5 fruit quantities
     * @return The Map of fruits and their quantities.
     */
    public static Map<String, Integer> addItemsToMap() {
        Map<String, Integer> fruitQuantities = new Map<String, Integer>();
        fruitQuantities.put('Apples', 5);
        fruitQuantities.put('Oranges', 10);
        fruitQuantities.put('Bananas', 15);
        fruitQuantities.put('Pears', 20);
        fruitQuantities.put('Grapes', 25);
        return fruitQuantities;
    }

    /**
     * Question 19
     * Get salary for the specified employee from a Map.
     * Example: getSalary("John Doe") should return 50000
     * @param employeeName The name of the employee.
     * @return The salary of the employee, or null if not found.
     */
    public static Integer getSalary(String employeeName) {
        Map<String, Integer> employeeSalaries = new Map<String, Integer>{
            'John Doe' => 50000,
            'Jane Smith' => 60000,
            'Sam Brown' => 55000,
            'Alice Johnson' => 65000
        };
        return employeeSalaries.get(employeeName);
    }

    /**
     * Question 20
     * Get employees with salary over 55000.
     * Example: getHighPaidEmployees() should return ['Jane Smith', 'Alice Johnson']
     * @return List of employee names with salary over 55000.
     */
    public static List<String> getHighPaidEmployees() {
        Map<String, Integer> employeeSalaries = new Map<String, Integer>{
            'John Doe' => 50000,
            'Jane Smith' => 60000,
            'Sam Brown' => 55000,
            'Alice Johnson' => 65000
        };
        List<String> highPaidEmployees = new List<String>();
        for (String employee : employeeSalaries.keySet()) {
            if (employeeSalaries.get(employee) > 55000) {
                highPaidEmployees.add(employee);
            }
        }
        return highPaidEmployees;
    }
}