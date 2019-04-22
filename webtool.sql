-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2019 at 03:20 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtool`
--

-- --------------------------------------------------------

--
-- Table structure for table `cplustbl`
--

CREATE TABLE `cplustbl` (
  `cplus_id` int(11) NOT NULL,
  `cplus_name` varchar(250) NOT NULL,
  `cplus_description` text NOT NULL,
  `cplus_content` text NOT NULL,
  `compare_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cplustbl`
--

INSERT INTO `cplustbl` (`cplus_id`, `cplus_name`, `cplus_description`, `cplus_content`, `compare_name`) VALUES
(1, 'pow()', 'The pow() function returns base raised to the power of exponent.', '#include <iostream>\r\n#include <cmath>\r\nusing namespace std;\r\n\r\nint main ()\r\n{\r\n	double base, exponent, result;\r\n	\r\n	base = 3.4;\r\n	exponent = 4.4;\r\n	result = pow(base, exponent);\r\n	\r\n	cout << base << "^" << exponent << " = " << result;\r\n	\r\n	return 0;\r\n}', 'pow'),
(2, 'remainder()', 'The remainder() function takes two arguments and returns a value of type double, float or long double type.', '#include <iostream>\r\n#include <cmath>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    double x = 7.5, y = 2.1;\r\n    double result = remainder(x, y);\r\n    cout << "Remainder of " << x << "/" << y << " = " << result << endl;\r\n\r\n    x = -17.50, y=2.0;\r\n    result = remainder(x, y);\r\n    cout << "Remainder of " << x << "/" << y << " = " << result << endl;\r\n    \r\n    y=0;\r\n    result = remainder(x, y);\r\n    cout << "Remainder of " << x << "/" << y << " = " << result << endl;\r\n    \r\n    return 0;\r\n}', 'remainder'),
(3, 'nan()', 'The na() function returns quiet NaN value.', '#include <iostream>\r\n#include <cmath>\r\n#include <cstring>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    double src = nan("1");\r\n    uint64_t dest;\r\n    \r\n    // copies variable src to dest\r\n    // use <cstring> for memcpy()\r\n    memcpy(&dest, &src, sizeof src);\r\n    cout << "nan(\\"1\\") = " << src << " (" << hex << dest << ")\\n";\r\n\r\n    return 0;\r\n}', 'nan'),
(5, 'fabs()', 'The fabs() function takes a single argument, x whose absolute value is returned.', '#include <iostream>\r\n#include <cmath>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    double x = -10.25, result;\r\n    \r\n    result = fabs(x);\r\n    cout << "fabs(" << x << ") = |" << x << "| = " << result << endl;\r\n\r\n    return 0;\r\n}', 'fabs'),
(6, 'fmin()', 'The fmin() function returns the minimum value among x and y.', '#include <iostream>\r\n#include <cmath>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    double x = -2.05, y = NAN, result;\r\n    \r\n    result = fmin(x, y);\r\n    cout << "fmin(x, y) = " << result << endl;\r\n\r\n    return 0;\r\n}', 'min'),
(7, 'fmax()', 'The fmax() function returns the maximum value among x and y.', '#include <iostream>\r\n#include <cmath>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    double x = -2.05, y = NAN, result;\r\n\r\n    result = fmax(x, y);\r\n    cout << "fmax(x, y) = " << result << endl;\r\n\r\n    return 0;\r\n}', 'max'),
(8, 'hypot()', 'The hytpot() takes either 2 or 3 parameters of integral or floating-point type.', '#include <iostream>\r\n#include <cmath>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	double x = 2.1, y = 3.1, result;\r\n	result = hypot(x, y);\r\n	cout << "hypot(x, y) = " << result << endl;\r\n	\r\n	long double yLD, resultLD;\r\n	x = 3.52;\r\n	yLD = 5.232342323;\r\n	\r\n	// hypot() returns long double in this case\r\n	resultLD = hypot(x, yLD);\r\n	cout << "hypot(x, yLD) = " << resultLD;\r\n	\r\n	return 0;\r\n}', 'hypot'),
(9, 'cbrt()', 'The cbrt() function returns the cube root of the given argument.', '#include <iostream>\r\n#include <cmath>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    double x = -1000.0, result;\r\n    result = cbrt(x);\r\n    cout << "Cube root of " << x << " is " << result << endl;\r\n\r\n    return 0;\r\n}', 'cbrt'),
(10, 'sqrt()', 'The sqrt() function returns the square root of the given argument.', '#include <iostream>\r\n#include <cmath>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	double x = 10.25, result;\r\n	result = sqrt(x);\r\n	cout << "Square root of " << x << " is " << result << endl;\r\n\r\n	return 0;\r\n}', 'sqrt'),
(11, 'logb()', 'The logb() function returns the logarithm of |x|, using FLT_RADIX as base for the logarithm.\r\n\r\nIf x is zero it may cause a domain error or a pole error or no error, depending on the library implementation.', '#include <iostream>\r\n#include <cmath>\r\n\r\nusing namespace std;\r\n\r\nint main ()\r\n{\r\n	double x = 121.056, result;\r\n\r\n	result = logb(x);\r\n	cout << "logb(" << x << ") = " << "log(|" << x << "|) = "<< result << endl;\r\n\r\n	return 0;\r\n}', 'logb'),
(12, 'exp()', 'he exp() function takes a single argument and returns exponential value in type double, float or long double type.', '#include <iostream>\r\n#include <cmath>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	double x = 2.19, result;\r\n	\r\n	result = exp(x);\r\n	cout << "exp(x) = " << result << endl;\r\n\r\n	return 0;\r\n}', 'exp'),
(13, 'round()', 'The round() function in C++ returns the integral value that is nearest to the argument, with halfway cases rounded away from zero.', '#include <iostream>\r\n#include <cmath>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    double x = 11.16, result;\r\n    result = round(x);\r\n    cout << "round(" << x << ") = " << result << endl;\r\n\r\n    x = 13.87;\r\n    result = round(x);\r\n    cout << "round(" << x << ") = " << result << endl;\r\n    \r\n    x = 50.5;\r\n    result = round(x);\r\n    cout << "round(" << x << ") = " << result << endl;\r\n    \r\n    x = -11.16;\r\n    result = round(x);\r\n    cout << "round(" << x << ") = " << result << endl;\r\n\r\n    x = -13.87;\r\n    result = round(x);\r\n    cout << "round(" << x << ") = " << result << endl;\r\n    \r\n    x = -50.5;\r\n    result = round(x);\r\n    cout << "round(" << x << ") = " << result << endl;\r\n    \r\n    return 0;\r\n}', 'round'),
(14, 'trunc()', 'The trunc() function in C++ rounds the argument towards zero and returns the nearest integral value that is not larger in magnitude than the argument.', '#include <iostream>\r\n#include <cmath>\r\n \r\nusing namespace std;\r\n \r\nint main()\r\n{\r\n    double x = 10.25, result;\r\n    result = trunc(x);\r\n    cout << "trunc(" << x << ") = " << result << endl;\r\n \r\n    x = -34.251;\r\n    result = trunc(x);\r\n    cout << "trunc(" << x << ") = " << result << endl;\r\n \r\n    return 0;\r\n}', 'trunc'),
(15, 'log()', 'The log() function returns the natural logarithm of a number.', '#include <iostream>\r\n#include <cmath>\r\nusing namespace std;\r\n\r\nint main ()\r\n{\r\n	double x = 13.056, result;\r\n	result = log (x);\r\n	cout << "log(x) = " << result << endl;\r\n	\r\n	x = -3.591;\r\n	result = log (x);\r\n	cout << "log(x) = " << result << endl;\r\n	\r\n	return 0;\r\n}', 'log'),
(16, 'fmod()', 'The fmod() function returns the floating point remainder of x/y. If the denominator y is zero, fmod() returns NaN (Not a Number).', '#include <iostream>\r\n#include <cmath>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    double x = 7.5, y = 2.1;\r\n    double result = fmod(x, y);\r\n    cout << "Remainder of " << x << "/" << y << " = " << result << endl;\r\n    \r\n    x = -17.50, y = 2.0;\r\n    result = fmod(x, y);\r\n    cout << "Remainder of " << x << "/" << y << " = " << result << endl;\r\n    \r\n    return 0;\r\n}', 'fmod'),
(17, 'floor()', 'The floor() function returns the largest possible integer value which is less than or equal to the given argument.\r\n\r\n', '#include <iostream>\r\n#include <cmath>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    double x = 10.25, result;\r\n    result = floor(x);\r\n    cout << "Floor of " << x << " = " << result << endl;\r\n\r\n    x = -34.251;\r\n    result = floor(x);\r\n    cout << "Floor of " << x << " = " << result << endl;\r\n    \r\n    x = 0.71;\r\n    result = floor(x);\r\n    cout << "Floor of " << x << " = " << result << endl;\r\n    \r\n    return 0;\r\n}\r\n', 'floor'),
(18, 'ceil()', 'The ceil() function returns the smallest possible integer value which is greater than or equal to the given argument.\r\n\r\n', '#include <iostream>\r\n#include <cmath>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    double x = 10.25, result;\r\n    result = ceil(x);\r\n    cout << "Ceil of " << x << " = " << result << endl;\r\n    return 0;\r\n}', 'ceil'),
(19, 'calloc()', 'The calloc() function returns:\r\n\r\na pointer to the start of the memory block allocated by the function.\r\nnull pointer if allocation fails.', '#include <iostream>\r\n#include <cstdlib>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    int *ptr;\r\n    ptr = (int*) malloc(5*sizeof(int));\r\n    if(!ptr) {\r\n        cout << "Memory Allocation Failed";\r\n        exit(1);\r\n    }\r\n    cout << "Initializing values..." << endl << endl;\r\n    for (int i=0; i<5; i++)\r\n    {\r\n        ptr[i] = i*2+1;\r\n    }\r\n    cout << "Initialized values" << endl;\r\n    for (int i=0; i<5; i++)\r\n    {\r\n        /* ptr[i] and *(ptr+i) can be used interchangeably */\r\n        cout << *(ptr+i) << endl;\r\n    }\r\n    free(ptr);\r\n    return 0;\r\n}', 'calloc'),
(20, 'abs()', 'x: An integral value whose absolute value is returned.', '#include <iostream>\r\n#include <cstdlib>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	int x = -5;\r\n	long y = -2371041;\r\n\r\n	int a = abs(x);\r\n	long b = abs(y);\r\n\r\n	cout << "abs(" << x << ") = |" << x << "| = " << a << endl;\r\n	cout << "abs(" << y << ") = |" << y << "| = " << b << endl;\r\n}', 'abs'),
(21, 'realloc()', 'The realloc() function returns:\r\n\r\nA pointer to the beginning of the reallocated memory block.\r\nNull pointer if allocation fails.', '#include <iostream>\r\n#include <cstdlib>\r\nusing namespace std;\r\nint main()\r\n{\r\n	float *ptr, *new_ptr;\r\n	ptr = (float*) malloc(5*sizeof(float));\r\n	if(ptr==NULL)\r\n	{\r\n		cout << "Memory Allocation Failed";\r\n		exit(1);\r\n	}\r\n\r\n	/* Initializing memory block */\r\n	for (int i=0; i<5; i++)\r\n	{\r\n		ptr[i] = i*1.5;\r\n	}\r\n\r\n	/* reallocating memory */\r\n	new_ptr = (float*) realloc(ptr, 10*sizeof(float));\r\n	if(new_ptr==NULL)\r\n	{\r\n		cout << "Memory Re-allocation Failed";\r\n		exit(1);\r\n	}\r\n	\r\n	/* Initializing re-allocated memory block */\r\n	for (int i=5; i<10; i++)\r\n	{\r\n		new_ptr[i] = i*2.5;\r\n	}\r\n	cout << "Printing Values" << endl;\r\n	\r\n	for (int i=0; i<10; i++)\r\n	{\r\n		cout << new_ptr[i] << endl;\r\n	}\r\n	free(new_ptr);\r\n	\r\n	return 0;\r\n}\r\nWhen you run the program,', 'realloc'),
(22, 'free()', 'The free() function returns nothing. It simply makes the memory block available for us.', '#include <iostream>\r\n#include <cstdlib>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n	int *ptr;\r\n	ptr = (int*) malloc(5*sizeof(int));\r\n	cout << "Enter 5 integers" << endl;\r\n\r\n	for (int i=0; i<5; i++)\r\n	{\r\n	// *(ptr+i) can be replaced by ptr[i]\r\n		cin >> *(ptr+i);\r\n	}\r\n	cout << endl << "User entered value"<< endl;\r\n\r\n	for (int i=0; i<5; i++)\r\n	{\r\n		cout << *(ptr+i) << " ";\r\n	}\r\n	free(ptr);\r\n\r\n	/* prints a garbage value after ptr is free */\r\n	cout << "Garbage Value" << endl;\r\n\r\n	for (int i=0; i<5; i++)\r\n	{\r\n		cout << *(ptr+i) << " ";\r\n	}\r\n	return 0;\r\n}', 'free'),
(23, 'strlen()', 'str: Pointer to the null terminated byte string whose length is to be calculated.', '#include <cstring>\r\n#include <iostream>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    char str1[] = "This a string";\r\n    char str2[] = "This is another string";\r\n    \r\n    int len1 = strlen(str1);\r\n    int len2 = strlen(str2);\r\n\r\n    cout << "Length of str1 = " << len1 << endl;\r\n    cout << "Length of str2 = " << len2 << endl;\r\n    if (len1 > len2)\r\n        cout << "str1 is longer than str2";\r\n    else if (len1 < len2)\r\n        cout << "str2 is longer than str1";\r\n    else\r\n        cout << "str1 and str2 are of equal length";\r\n\r\n    return 0;\r\n}', 'strlen'),
(24, 'strerror()', 'The strerror() function returns a pointer to a null terminated string that consists of the description of the error corresponding to errnum.', '#include <cstring>\r\n#include <cmath>\r\n#include <cstdio>\r\n#include <cerrno>\r\n#include <iostream>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    float log_neg = log(-2.5);\r\n    cout << "Log of negative number : " << strerror(errno) << endl;\r\n\r\n    /* example.txt does not exist */\r\n    FILE * fp = fopen("example.txt","r");\r\n    if (fp == NULL)\r\n        cout << "Error opening file : " << strerror(errno) << endl;\r\n\r\n    return 0;\r\n}', 'strerror'),
(25, 'strtok()', 'The strtok() function returns the pointer to the next token if there is any, or it returns NULL if no more tokens are found.', '#include <cstring>\r\n#include <iostream>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    char str[] = "parrot,owl,sparrow,pigeon,crow";\r\n    char delim[] = ",";\r\n    cout << "The tokens are:" << endl;\r\n    char *token = strtok(str,delim);\r\n    while (token)\r\n    {\r\n        cout << token << endl;\r\n        token = strtok(NULL,delim);\r\n    }\r\n    return 0;\r\n}', 'strtok'),
(26, 'strstr()', 'The strstr() function takes two arguments: str and target. It searches for the first occurrence of target in the string pointed to by str. The terminating null characters are ignored.', '#include <cstring>\r\n#include <iostream>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    char str[] = "Use your brain and heart";\r\n    char target[] = "brain";\r\n    char *p = strstr(str, target);\r\n    \r\n    if (p)\r\n        cout << "''" << target << "'' is present in \\"" << str << "\\" at position " << p-str;\r\n    else\r\n        cout << target << " is not present \\"" << str << "\\"";\r\n\r\n    return 0;\r\n}', 'strstr'),
(27, 'strchr()', 'If the character is found, the strchr() function returns a pointer to the location of the character in str, otherwise returns null pointer.', '#include <cstring>\r\n#include <iostream>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    char str[] = "Programming is easy.";\r\n    char ch = ''r'';\r\n    \r\n    if (strchr(str, ch))\r\n        cout << ch << " is present \\"" << str << "\\"";\r\n    else\r\n        cout << ch << " is not present \\"" << str << "\\"";\r\n\r\n    return 0;\r\n}', 'chr'),
(28, 'strcmp()', 'The strcmp() function returns a:\r\n\r\npositive value if the first differing character in lhs is greater than the corresponding character in rhs.\r\nnegative value if the first differing character in lhs is less than the corresponding character in rhs.\r\n0? if hs and rhs are equal.', '#include <cstring>\r\n#include <iostream>\r\n\r\nusing namespace std;\r\n\r\nvoid display(char *lhs, char *rhs, int result)\r\n{\r\n    if(result > 0)\r\n        cout << rhs << " precedes " << lhs << endl;\r\n    else if (result < 0)\r\n        cout << lhs << " precedes " << rhs << endl;\r\n    else\r\n        cout << lhs << " and " << rhs << " are same" << endl;\r\n}\r\n\r\nint main()\r\n{\r\n    char lhs[] = "Armstrong";\r\n    char rhs[] = "Army";\r\n    int result;\r\n\r\n    result = strcmp(lhs,rhs);\r\n    display(lhs,rhs,result);\r\n\r\n    result = strcmp(lhs,lhs);\r\n    display(lhs,lhs,result);\r\n\r\n    return 0;\r\n}', 'compare'),
(29, 'strcat()', 'The strcat() function returns dest, the pointer to the destination string.', '#include <cstring>\r\n#include <iostream>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    char dest[50] = "Learning C++ is fun";\r\n    char src[50] = " and easy";\r\n\r\n    strcat(dest, src);\r\n    \r\n    cout << dest ;\r\n\r\n    return 0;\r\n\r\n}', 'concat'),
(30, 'strcpy()', 'The strcpy() function returns dest, the pointer to the destination.', '#include <cstring>\r\n#include <iostream>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    char src[] = "Hello Programmers.";\r\n    \r\n    /* Large enough to store content of src */\r\n    char dest[20];\r\n    \r\n    strcpy(dest,src);\r\n    cout << dest;\r\n    return 0;\r\n}', 'copy'),
(31, 'toupper()', 'The toupper() function returns a uppercase version of ch if it exists. Otherwise it returns ch.', '#include <cctype>\n#include <iostream>\n#include <cstring>\n#include <cstdio>\n\nusing namespace std;\n\nint main()\n{\n    char str[] = "John is from USA.";\n\n    cout << "The uppercase version of \\"" << str << "\\" is " << endl;\n\n    for (int i=0; i<strlen(str); i++)\n        putchar(toupper(str[i]));\n    \n    return 0;\n}', 'toupper'),
(32, 'tolower()', 'The tolower() function returns a lowercase version of ch if it exists. Otherwise it returns ch.', '#include <cctype>\r\n#include <iostream>\r\n#include <cstring>\r\n#include <cstdio>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    char str[] = "John is from USA.";\r\n\r\n    cout << "The lowercase version of \\"" << str << "\\" is " << endl;\r\n\r\n    for (int i=0; i<strlen(str); i++)\r\n        putchar(tolower(str[i]));\r\n    \r\n    return 0;\r\n}', 'tolower'),
(33, 'isupper()', 'The isupper() function returns non zero value if ch is in uppercase, otherwise returns zero.', '#include <cctype>\n#include <iostream>\n#include <cstring>\n\nusing namespace std;\n\nint main()\n{\n    char str[] = "This Program Converts ALL UPPERCASE Characters to LOWERCASE";\n\n    for (int i=0; i<strlen(str); i++)\n    {\n        if (isupper(str[i]))\n            /*  Converting uppercase characters to lowercase  */\n            str[i] = str[i] + 32;\n    }\n\n    cout << str;\n    return 0;\n}', 'upper'),
(34, 'islower()', 'The islower() function in C++ checks if the given character is a lowercase character or not.', '#include <cctype>\r\n#include <iostream>\r\n#include <cstring>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    char str[] = "This Program Converts ALL LowerCase Characters to UpperCase";\r\n\r\n    for (int i=0; i < strlen(str); i++)\r\n    {\r\n        if (islower(str[i]))\r\n            /*  Converting lowercase characters to uppercase  */\r\n            str[i] = str[i] - 32;\r\n    }\r\n\r\n    cout << str;\r\n    return 0;\r\n}', 'lower');

-- --------------------------------------------------------

--
-- Table structure for table `css1_tbl`
--

CREATE TABLE `css1_tbl` (
  `css1_id` int(11) NOT NULL,
  `css1_name` varchar(250) NOT NULL,
  `css1_description` text NOT NULL,
  `css1_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `css1_tbl`
--

INSERT INTO `css1_tbl` (`css1_id`, `css1_name`, `css1_description`, `css1_content`) VALUES
(1, 'attr()', 'The attr() function returns the value of an attribute of the selected elements.', 'a:after {\r\n    content: " (" attr(href) ")";\r\n}'),
(2, 'calc() ', 'The calc() function performs a calculation to be used as the property value.', '#div1 {\r\n    position: absolute;\r\n    left: 50px;\r\n    width: calc(100% - 100px);\r\n    border: 1px solid black;\r\n    background-color: yellow;\r\n    padding: 5px;\r\n    text-align: center;\r\n}'),
(3, 'cubic-bezier()', 'The cubic-bezier() function defines a Cubic Bezier curve.\r\n\r\nA Cubic Bezier curve is defined by four points P0, P1, P2, and P3. P0 and P3 are the start and the end of the curve and, in CSS these points are fixed as the coordinates are ratios. P0 is (0, 0) and represents the initial time and the initial state, P3 is (1, 1) and represents the final time and the final state.\r\n\r\nThe cubic-bezier() function can be used with the animation-timing-function property and the transition-timing-function property. ', 'div {\r\n    width: 100px;\r\n    height: 100px;\r\n    background: red;\r\n    transition: width 2s;\r\n    transition-timing-function: cubic-bezier(0.1, 0.7, 1.0, 0.1);\r\n}\r\n'),
(4, 'hsl()', 'The hsl() function define colors using the Hue-saturation-lightness model (HSL).\r\n\r\nHSL stands for hue, saturation, and lightness - and represents a cylindrical-coordinate representation of colors.', '#p1 {background-color:hsl(120,100%,50%);} /* green */\r\n#p2 {background-color:hsl(120,100%,75%);} /* light green */\r\n#p3 {background-color:hsl(120,100%,25%);} /* dark green */\r\n#p4 {background-color:hsl(120,60%,70%);} /* pastel green */\r\n '),
(5, 'linear-gradient() ', 'The linear-gradient() function sets a linear gradient as the background image.\r\n\r\nTo create a linear gradient you must define at least two color stops. Color stops are the colors you want to render smooth transitions among. You can also set a starting point and a direction (or an angle) along with the gradient effect.', '#grad {\r\n    background-image: linear-gradient(red, yellow, blue);\r\n}'),
(6, 'radial-gradient()', 'The radial-gradient() function sets a radial gradient as the background image.\r\n\r\nA radial gradient is defined by its center.\r\n\r\nTo create a radial gradient you must define at least two color stops.', '#grad {\r\n  background-image: radial-gradient(red, green, blue);\r\n}'),
(7, 'repeating-linear-gradient()', 'The repeating-linear-gradient() function is used to repeat linear gradients.', '#grad {\r\n    background-image: repeating-linear-gradient(red, yellow 10%, green 20%);\r\n}'),
(8, 'repeating-radial-gradient() ', 'The repeating-radial-gradient() function is used to repeat radial gradients.', '#grad {\r\n    background-image: repeating-radial-gradient(red, yellow 10%, green 15%);\r\n}'),
(9, 'rgb()', 'The rgb() function define colors using the Red-green-blue (RGB) model.\r\n\r\nAn RGB color value is specified with: rgb(red, green, blue). Each parameter defines the intensity of that color and can be an integer between 0 and 255 or a percentage value (from 0% to 100%).\r\n\r\nFor example, the rgb(0,0,255) value is rendered as blue, because the blue parameter is set to its highest value (255) and the others are set to 0.', '#p1 {background-color:rgb(255,0,0);} /* red */\r\n#p2 {background-color:rgb(0,255,0);} /* green */\r\n#p3 {background-color:rgb(0,0,255);} /* blue */'),
(10, 'rgba()', 'The rgba() function define colors using the Red-green-blue-alpha (RGBA) model.\r\n\r\nRGBA color values are an extension of RGB color values with an alpha channel - which specifies the opacity of the color.', '#p1 {background-color:rgba(255,0,0,0.3);} /* red with opacity*/\r\n#p2 {background-color:rgba(0,255,0,0.3);} /* green with opacity */\r\n#p3 {background-color:rgba(0,0,255,0.3);} /* blue with opacity */'),
(11, 'var() ', 'The var() function is used to insert the value of a custom property instead of any part of a value of another property.', ':root {\r\n    --main-bg-color: coral; \r\n}\r\n\r\n#div1 {\r\n    background-color: var(--main-bg-color); \r\n}\r\n\r\n#div2 {\r\n    background-color: var(--main-bg-color);\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `ctbl`
--

CREATE TABLE `ctbl` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(250) NOT NULL,
  `c_description` text NOT NULL,
  `c_content` text NOT NULL,
  `compare_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ctbl`
--

INSERT INTO `ctbl` (`c_id`, `c_name`, `c_description`, `c_content`, `compare_name`) VALUES
(1, 'strcpy', 'The strcpy function copies characters from src to dest up to and including the terminating null character.', '#include <stdio.h>\r\n\r\nint main() {\r\n  char input_str[20];\r\n  char *output_str;\r\n\r\n  strcpy(input_str, "Hello");\r\n  printf("input_str: %s\\n", input_str);\r\n\r\n  output_str = strcpy(input_str, "World");\r\n\r\n  printf("input_str: %s\\n", input_str);\r\n  printf("output_str: %s\\n", output_str);\r\n\r\n  return 0;\r\n}', 'copy'),
(2, 'strncpy', 'The strncpy function copies n characters from src to dest up to and including the terminating null character if length of src is less than n.', '#include <stdio.h>\r\n\r\nint main() {\r\n  char input_str[20];\r\n  char *output_str;\r\n\r\n  strncpy(input_str, "Hello", 20);\r\n  printf("input_str: %s\\n", input_str);\r\n\r\n  /* Reset string */\r\n  memset(input_str, ''\\0'', sizeof( input_str ));\r\n\r\n  strncpy(input_str, "Hello", 2);\r\n  printf("input_str: %s\\n", input_str);\r\n\r\n  /* Reset string */\r\n  memset(input_str, ''\\0'', sizeof( input_str ));\r\n  output_str = strncpy(input_str, "World", 3);\r\n\r\n  printf("input_str: %s\\n", input_str);\r\n  printf("output_str: %s\\n", output_str);\r\n\r\n  return 0;\r\n}', 'strncpy'),
(3, 'strcmp', 'The strcmp function compares the contents of string1 and string2 and returns a value indicating their relationship.', '#include <stdio.h>\r\n\r\nint main() {\r\n  char string1[20];\r\n  char string2[20];\r\n\r\n  strcpy(string1, "Hello");\r\n  strcpy(string2, "Hellooo");\r\n  printf("Return Value is : %d\\n", strcmp( string1, string2));\r\n\r\n  strcpy(string1, "Helloooo");\r\n  strcpy(string2, "Hellooo");\r\n  printf("Return Value is : %d\\n", strcmp( string1, string2));\r\n\r\n  strcpy(string1, "Hellooo");\r\n  strcpy(string2, "Hellooo");\r\n  printf("Return Value is : %d\\n", strcmp( string1, string2));\r\n\r\n  return 0;\r\n}', 'compare'),
(4, 'strlen', 'The strlen function calculates the length, in bytes, of src. This calculation does not include the null terminating character', '#include <stdio.h>\r\n\r\nint main() {\r\n  char string1[20];\r\n  char string2[20];\r\n\r\n  strcpy(string1, "Hello");\r\n  strcpy(string2, "Hellooo");\r\n\r\n  printf("Length of string1 : %d\\n", strlen( string1 ));\r\n  printf("Length of string2 : %d\\n", strlen( string2 ));\r\n\r\n  return 0;\r\n}', 'strlen'),
(5, 'strcat', 'The strcat function concatenates or appends src to dest. All characters from src are copied including the terminating null character', '#include <stdio.h>\r\n\r\nint main() {\r\n  char string1[20];\r\n  char string2[20];\r\n\r\n  strcpy(string1, "Hello");\r\n  strcpy(string2, "Hellooo");\r\n\r\n  printf("Returned String : %s\\n", strcat( string1, string2 ));\r\n  printf("Concatenated String : %s\\n", string1 );\r\n\r\n  return 0;\r\n}', 'concat'),
(6, 'strchr', 'The strchr function searches string for the first occurrence of c. The null character terminating string is included in the search.', '#include <stdio.h>\r\n\r\nint main() {\r\n  char *s;\r\n  char buf [] = "This is a test";\r\n\r\n  s = strchr (buf, ''t'');\r\n\r\n  if (s != NULL)\r\n    printf ("found a ''t'' at %s\\n", s);\r\n\r\n  return 0;\r\n}', 'strchr'),
(7, 'strrchr', 'The strrchr function searches string for the last occurrence of c. The null character terminating string is included in the search.', '#include <stdio.h>\r\n\r\nint main() {\r\n  char *s;\r\n  char buf [] = "This is a testing";\r\n\r\n  s = strrchr (buf, ''t'');\r\n\r\n  if (s != NULL)\r\n    printf ("found a ''t'' at %s\\n", s);\r\n\r\n  return 0;\r\n}', 'strrchr'),
(8, 'strstr', 'The strstr function locates the first occurrence of the string string1 in the string string2 and returns a pointer to the beginning of the first occurrence.', '#include <stdio.h>\r\n\r\nint main() {\r\n   char s1 [] = "My House is small";\r\n   char s2 [] = "My Car is green";\r\n\r\n   printf ("Returned String 1: %s\\n", strstr (s1, "House"));\r\n   printf ("Returned String 2: %s\\n", strstr (s2, "Car"));\r\n}', 'strstr'),
(9, 'strtok ', 'A sequence of calls to this function split str into tokens, which are sequences of contiguous characters spearated by any of the characters that are part of delimiters.', '#include <stdio.h>\r\n\r\nint main ()\r\n{\r\n  char str[] ="- This, a sample string.";\r\n  char * pch;\r\n  printf ("Splitting string \\"%s\\" into tokens:\\n",str);\r\n  pch = strtok (str," ,.-");\r\n  while (pch != NULL)\r\n  {\r\n    printf ("%s\\n",pch);\r\n    pch = strtok (NULL, " ,.-");\r\n  }\r\n  return 0;\r\n}', 'strtok'),
(10, 'calloc', 'Allocates a block of memory for an array of num elements, each of them size bytes long, and initializes all its bits to zero.', '#include <stdio.h>\r\n\r\nint main ()\r\n{\r\n  int i,n;\r\n  int * pData;\r\n  printf ("Amount of numbers to be entered: ");\r\n  scanf ("%d",&i);\r\n  pData = (int*) calloc (i,sizeof(int));\r\n  if (pData==NULL) exit (1);\r\n  for (n=0;n<i;n++)\r\n  {\r\n    printf ("Enter number #%d: ",n);\r\n    scanf ("%d",&pData[n]);\r\n  }\r\n  printf ("You have entered: ");\r\n  for (n=0;n<i;n++) printf ("%d ",pData[n]);\r\n  free (pData);\r\n  return 0;\r\n}', 'calloc'),
(11, 'free ', 'A block of memory previously allocated using a call to malloc, calloc or realloc is deallocated, making it availbale again for further allocations.', '#include <stdio.h>\r\n\r\nint main ()\r\n{\r\n  int * buffer1, * buffer2, * buffer3;\r\n  buffer1 = (int*) malloc (100*sizeof(int));\r\n  buffer2 = (int*) calloc (100,sizeof(int));\r\n  buffer3 = (int*) realloc (buffer2,500*sizeof(int));\r\n  free (buffer1);\r\n  free (buffer3);\r\n  return 0;\r\n}', 'free'),
(12, 'malloc', 'Allocates a block of size bytes of memory, returning a pointer to the beginning of the block.', '#include <stdio.h>\r\n\r\nint main ()\r\n{\r\n  int i,n;\r\n  int * pData;\r\n  printf ("Amount of numbers to be entered: ");\r\n  scanf ("%d",&i);\r\n  pData = (int*) malloc (i*sizeof(int));\r\n  if (pData==NULL) exit (1);\r\n  for (n=0;n<i;n++)\r\n  {\r\n    printf ("Enter number #%d: ",n);\r\n    scanf ("%d",&pData[n]);\r\n  }\r\n  printf ("You have entered: ");\r\n  for (n=0;n<i;n++) printf ("%d ",pData[n]);\r\n  free (pData);\r\n  return 0;\r\n}', 'malloc'),
(13, 'realloc', 'The size of the memory block pointed to by the mem_address parameter is changed to the newsize bytes, expanding or reducing the amount of memory available in the block.', '#include <stdio.h>\r\n\r\nint main ()\r\n{\r\n  int input,n;\r\n  int count=0;\r\n  int * numbers = NULL;\r\n\r\n  do {\r\n     printf ("Enter an integer value (0 to end): ");\r\n     scanf ("%d", &input);\r\n     count++;\r\n     numbers = (int*) realloc (numbers, count * sizeof(int));\r\n     if (numbers==NULL)\r\n       { puts ("Error (re)allocating memory"); exit (1); }\r\n     numbers[count-1]=input;\r\n  } while (input!=0);\r\n\r\n  printf ("Numbers entered: ");\r\n  for (n=0;n<count;n++) printf ("%d ",numbers[n]);\r\n  free (numbers);\r\n\r\n  return 0;\r\n}', 'realloc'),
(14, 'memcpy', 'The memcpy function copies n bytes from ct to s. If these memory buffers overlap, the memcpy function cannot guarantee that bytes in ct are copied to s before being overwritten. If these buffers do overlap, use the memmove function.', '#include <stdio.h>\r\n\r\nint main() {\r\n  char src [100] = "Copy this string to dst1";\r\n  char dst [100];\r\n  char *p;\r\n\r\n  p = memcpy (dst, src, sizeof (dst));\r\n  printf ("dst = \\"%s\\"\\n", p);\r\n}', 'memcpy'),
(15, 'memcmp', 'The memcmp function compares the first n bytes from cs and ct and returns a value indicating their relationship', '#include <stdio.h>\r\n\r\nint main() {\r\n  char hexchars [] = "0123456789ABCDEF";\r\n  char hexchars2 [] = "0123456789abcdef";\r\n  char i;\r\n\r\n  i = memcmp (hexchars, hexchars2, 16);\r\n\r\n  if (i < 0)\r\n    printf ("hexchars < hexchars2\\n");\r\n  else if (i > 0)\r\n    printf ("hexchars >  hexchars2\\n");\r\n  else\r\n    printf ("hexchars == hexchars2\\n");\r\n\r\n  return 0;\r\n}', 'memcmp'),
(16, 'memmove ', 'Copies n characters from ct to s and returns s. s will not be corrupted if objects overlap.', '#include <stdio.h>\r\n\r\nint main() {\r\n  static char buf [] = "This is line 1 \\n"\r\n                       "This is line 2 \\n"\r\n                       "This is line 3 \\n";\r\n\r\n  printf ("buf before = %s\\n", buf);\r\n  memmove (&buf [0], &buf [16], 32);\r\n  printf ("buf after = %s\\n", buf);\r\n  return 0;\r\n}', 'memmove'),
(17, 'isalnum', 'The function returns nonzero if c is any of:\r\n\r\na b c d e f g h i j k l m n o p q r s t u v w x y z\r\nA B C D E F G H I J K L M N O P Q R S T U V W X Y Z\r\no 1 2 3 4 5 6 7 8 9', '#include <stdio.h>\r\n\r\nint main() {\r\n\r\n  if( isalnum( '';'' ) )\r\n  {\r\n     printf( "Character ; is not alphanumeric\\n" );\r\n  }\r\n  if( isalnum( ''A'' ) )\r\n  {\r\n     printf( "Character A is alphanumeric\\n" );\r\n  }\r\n  return 0;\r\n}', 'isalnum'),
(18, 'isalpha', 'The function returns nonzero if c is any of:\r\n\r\na b c d e f g h i j k l m n o p q r s t u v w x y z\r\nA B C D E F G H I J K L M N O P Q R S T U V W X Y Z\r\n', '#include <stdio.h>\r\n\r\nint main() {\r\n\r\n  if( isalpha( ''9'' ) )\r\n  {\r\n     printf( "Character 9 is not alpha\\n" );\r\n  }\r\n  if( isalpha( ''A'' ) )\r\n  {\r\n     printf( "Character A is alpha\\n" );\r\n  }\r\n  return 0;\r\n}', 'isalpha'),
(19, 'iscntrl', 'The function returns nonzero if c is any of:\r\n\r\nBEL BS CR FF HT NL VT\r\n', '#include <stdio.h>\r\n\r\nint main() {\r\n\r\n  if( iscntrl( ''a'' ) )\r\n  {\r\n     printf( "Character a is not control character\\n" );\r\n  }\r\n  if( iscntrl( ''\\n'' ) )\r\n  {\r\n     printf( "Character \\n is control chracter\\n" );\r\n  }\r\n  return 0;\r\n}', 'iscntrl'),
(20, 'isdigit', 'The function returns nonzero if c is any of:\r\n\r\n0 1 2 3 4 5 6 7 8 9\r\n', '#include <stdio.h>\r\n\r\nint main() {\r\n\r\n  if( isdigit( ''9'' ) )\r\n  {\r\n     printf( "Character 9 is a digit\\n" );\r\n  }\r\n  if( isdigit( ''A'' ) )\r\n  {\r\n     printf( "Character A is digit\\n" );\r\n  }\r\n  return 0;\r\n}', 'isdigit'),
(21, 'islower', 'The function returns nonzero if c is lower case otherwise this will return zero which will be equivalent to false.', '#include <stdio.h>\r\n\r\nint main() {\r\n\r\n  if( islower( ''a'' ) )\r\n  {\r\n     printf( "Character a is lower case\\n" );\r\n  }\r\n  if( islower( ''A'' ) )\r\n  {\r\n     printf( "Character A is lower case\\n" );\r\n  }\r\n  return 0;\r\n}', 'lower'),
(22, 'isprint', 'The function returns nonzero if c is space or a character for which isgraph returns nonzero', '#include <stdio.h>\r\n\r\nint main() {\r\n\r\n  if( isprint( '';'' ) )\r\n  {\r\n     printf( "Character ; is here\\n" );\r\n  }\r\n  if( isprint( ''A'' ) )\r\n  {\r\n     printf( "Character A is here\\n" );\r\n  }\r\n  return 0;\r\n}', 'print'),
(23, 'ispunct', 'The function returns nonzero if c is punctuation otherwise this will return zero which will be equivalent to false', '#include <stdio.h>\r\n\r\nint main() {\r\n\r\n  if( ispunct( ''%'' ) )\r\n  {\r\n     printf( "Character  % is a punctuation\\n" );\r\n  }\r\n  if( ispunct( ''A'' ) )\r\n  {\r\n     printf( "Character  A is a punctuation\\n" );\r\n  }\r\n  return 0;\r\n}', 'ispunct'),
(24, 'isupper', 'The function returns nonzero if c is upper case otherwise this will return zero which will be equivalent to false.', '#include <stdio.h>\r\n\r\nint main() {\r\n\r\n  if( isupper( ''a'' ) )\r\n  {\r\n     printf( "Character a is upper case\\n" );\r\n  }\r\n  if( isupper( ''A'' ) )\r\n  {\r\n     printf( "Character A is upper case\\n" );\r\n  }\r\n  return 0;\r\n}', 'upper'),
(25, 'tolower', 'The function returns the corresponding lowercase letter if one exists and if isupper(c); otherwise, it returns c', '#include <stdio.h>\r\n\r\nint main() {\r\n\r\n  printf( "Lower case of A is %c\\n", tolower(''A''));\r\n  printf( "Lower case of 9 is %c\\n", tolower(''9''));\r\n  printf( "Lower case of g is %c\\n", tolower(''g''));\r\n  return 0;\r\n}', 'tolower'),
(26, 'toupper ', 'The function returns the corresponding uppercase letter if one exists and if islower(c); otherwise, it returns c', '#include <stdio.h>\r\nint main() {\r\n\r\n  printf( "Upper case of a is %c\\n", toupper(''a''));\r\n  printf( "Upper case of 9 is %c\\n", toupper(''9''));\r\n  printf( "Upper case of g is %c\\n", toupper(''g''));\r\n  return 0;\r\n}', ''),
(27, 'perror', 'The perror() function shall map the error number accessed through the symbol errno to a language-dependent error message, which shall be written to the standard error ', '#include <stdio.h>\r\n#include <errno.h>\r\n\r\nextern int errno ;\r\n\r\nint main ()\r\n{\r\n  FILE * pFile;\r\n  pFile = fopen ("unexist.ent","rb");\r\n  if (pFile == NULL)\r\n  {\r\n    perror ("The following error occurred");\r\n    printf( "Value of errno: %d\\n", errno );\r\n  }\r\n  else\r\n    fclose (pFile);\r\n  return 0;\r\n}', ''),
(28, 'strerror ', 'The strerror() function returns a string describing the error code passed in the argument errnum. Here passed value will be errno', '#include <stdio.h>\r\n#include <errno.h>\r\n\r\nextern int errno ;\r\n\r\nint main ()\r\n{\r\n  FILE * pFile;\r\n  pFile = fopen ("unexist.ent","rb");\r\n  if (pFile == NULL)\r\n  {\r\n    printf( "Error Value is : %s\\n", strerror(errno) );\r\n  }\r\n  else\r\n    fclose (pFile);\r\n  return 0;\r\n}', '');

-- --------------------------------------------------------

--
-- Table structure for table `htmltbl`
--

CREATE TABLE `htmltbl` (
  `html_id` int(11) NOT NULL,
  `html_name` varchar(250) NOT NULL,
  `html_content` text NOT NULL,
  `html_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `htmltbl`
--

INSERT INTO `htmltbl` (`html_id`, `html_name`, `html_content`, `html_description`) VALUES
(2, 'Ins Tag', '<p>My favorite color is <del>blue</del> <ins>red</ins>!</p>\n', 'Defines a text that has been inserted into a document'),
(3, 'Fieldset Tag', '<form>\r\n  <fieldset>\r\n    <legend>Personalia:</legend>\r\n    Name: <input type="text"><br>\r\n    Email: <input type="text"><br>\r\n    Date of birth: <input type="text">\r\n  </fieldset>\r\n</form>', 'Groups related elements in a form'),
(4, 'Area Tag', '<img src="planets.gif" width="145" height="126" alt="Planets"\r\nusemap="#planetmap">\r\n\r\n<map name="planetmap">\r\n  <area shape="rect" coords="0,0,82,126" href="sun.htm" alt="Sun">\r\n  <area shape="circle" coords="90,58,3" href="mercur.htm" alt="Mercury">\r\n  <area shape="circle" coords="124,58,8" href="venus.htm" alt="Venus">\r\n</map>', 'Defines an area inside an image-map'),
(5, 'Link Tag', '<head>\r\n  <link rel="stylesheet" type="text/css" href="theme.css">\r\n</head>', 'Defines the relationship between a document and an external resource (most used to link to style sheets)'),
(6, 'Colgroup Tag', '<table>\r\n  <colgroup>\r\n    <col span="2" style="background-color:red">\r\n    <col style="background-color:yellow">\r\n  </colgroup>\r\n  <tr>\r\n    <th>ISBN</th>\r\n    <th>Title</th>\r\n    <th>Price</th>\r\n  </tr>\r\n  <tr>\r\n    <td>3476896</td>\r\n    <td>My first HTML</td>\r\n    <td>$53</td>\r\n  </tr>\r\n</table>\r\n', 'Specifies a group of one or more columns in a table for formatting'),
(7, 'Header Tag', '<article>\r\n  <header>\r\n    <h1>Most important heading here</h1>\r\n    <h3>Less important heading here</h3>\r\n    <p>Some additional information here</p>\r\n  </header>\r\n  <p>Lorem Ipsum dolor set amet....</p>\r\n</article>', 'Defines a header for a document or section'),
(8, 'Section Tag', '<section>\r\n  <h1>WWF</h1>\r\n  <p>The World Wide Fund for Nature (WWF) is....</p>\r\n</section>', 'Defines a section in a document'),
(9, 'Details Tag', '<details>\r\n  <summary>Copyright 1999-2018.</summary>\r\n  <p> - by Refsnes Data. All Rights Reserved.</p>\r\n  <p>All content and graphics on this web site are the property of the company Refsnes Data.</p>\r\n</details>', 'Defines additional details that the user can view or hide'),
(10, 'Dialog Tag', '<table>\r\n<tr>\r\n  <th>January <dialog open>This is an open dialog window</dialog></th>\r\n  <th>February</th>\r\n  <th>March</th>\r\n</tr>\r\n<tr>\r\n  <td>31</td>\r\n  <td>28</td>\r\n  <td>31</td>\r\n</tr>\r\n</table>', 'Defines a dialog box or window'),
(11, 'Data Tag', '<ul>\r\n  <li><data value="21053">Cherry Tomato</data></li>\r\n  <li><data value="21054">Beef Tomato</data></li>\r\n  <li><data value="21055">Snack Tomato</data></li>\r\n</ul>', 'Links the given content with a machine-readable translation'),
(12, 'Base Tag', '<head>\r\n  <base href="https://www.w3schools.com/images/" target="_blank">\r\n</head>\r\n\r\n<body>\r\n<img src="stickman.gif" width="24" height="39" alt="Stickman">\r\n<a href="https://www.w3schools.com">W3Schools</a>\r\n</body>', 'Specifies the base URL/target for all relative URLs in a document'),
(13, 'Parameter Tag', '<object data="horse.wav">\r\n  <param name="autoplay" value="true">\r\n</object>', 'Defines a parameter for an object'),
(14, 'Access key Attribute', '<a href="https://www.w3schools.com/html5" accesskey="h">HTML5</a><br>\r\n<a href="https://www.w3schools.com/css3" accesskey="c">CSS3</a>', 'Specifies a shortcut key to activate/focus an element'),
(15, 'Class attribute', '<html>\r\n<head>\r\n<style>\r\nh1.intro {\r\n    color: blue;\r\n}\r\n\r\np.important {\r\n    color: green;\r\n}\r\n</style>\r\n</head>\r\n<body>\r\n\r\n<h1 class="intro">Header 1</h1>\r\n<p>A paragraph.</p>\r\n<p class="important">Note that this is an important paragraph. :)</p>\r\n\r\n</body>\r\n</html>', 'Specifies one or more classnames for an element (refers to a class in a style sheet)'),
(16, 'Dir Attribute', '<p dir="rtl">Write this text right-to-left!</p>', 'Specifies the text direction for the content in an element'),
(17, 'Tableindex Attribute', '<a href="https://www.w3schools.com/" tabindex="2">W3Schools</a>\r\n<a href="http://www.google.com/" tabindex="1">Google</a>\r\n<a href="http://www.microsoft.com/" tabindex="3">Microsoft</a>', 'Specifies the tabbing order of an element'),
(18, 'Spellcheck Attribute', '<p contenteditable="true" spellcheck="true">This is a paragraph.</p>', 'Specifies whether the element is to have its spelling and grammar checked or not'),
(19, 'Hidden Attribute', '<p hidden>This paragraph should be hidden.</p>', 'Specifies that an element is not yet, or is no longer, relevant'),
(20, 'Dropzone Attribute', '<div dropzone="copy"></div>', 'Specifies whether the dragged data is copied, moved, or linked, when dropped'),
(21, 'Style Attribute', '<h1 style="color:blue;text-align:center">This is a header</h1>\r\n<p style="color:green">This is a paragraph.</p>', 'Specifies an inline CSS style for an element'),
(22, 'Id Attribute', '<html>\r\n<body>\r\n\r\n<h1 id="myHeader">Hello World!</h1>\r\n<button onclick="displayResult()">Change text</button>\r\n\r\n<script>\r\nfunction displayResult() {\r\n    document.getElementById("myHeader").innerHTML = "Have a nice day!";\r\n}\r\n</script>\r\n\r\n</body>\r\n</html>', 'Specifies a unique id for an element'),
(23, 'Lang Attribute', '<p lang="fr">Ceci est un paragraphe.</p>\r\n', 'Specifies the language of the element''s content'),
(24, 'Address Tag', '<address>\r\nWritten by <a href="mailto:webmaster@example.com">Jon Doe</a>.<br> \r\nVisit us at:<br>\r\nExample.com<br>\r\nBox 564, Disneyland<br>\r\nUSA\r\n</address>', 'Defines contact information for the author/owner of a document/article'),
(25, 'Blockquote Attribute', '<blockquote cite="http://www.worldwildlife.org/who/index.html">\r\nFor 50 years, WWF has been protecting the future of nature. The world''s leading conservation organization, WWF works in 100 countries and is supported by 1.2 million members in the United States and close to 5 million globally.\r\n</blockquote>', 'Defines a section that is quoted from another source'),
(26, 'Del Tag', '<p>My favorite color is <del>blue</del> <ins>red</ins>!</p>', 'Defines text that has been deleted from a document'),
(27, 'U Tag', '<p>This is a <u>parragraph</u>.</p>', 'Defines text that should be stylistically different from normal text');

-- --------------------------------------------------------

--
-- Table structure for table `javascriptbl`
--

CREATE TABLE `javascriptbl` (
  `javascript_id` int(11) NOT NULL,
  `javascript_name` varchar(250) NOT NULL,
  `javascript_content` text NOT NULL,
  `javascript_description` text NOT NULL,
  `compare_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `javascriptbl`
--

INSERT INTO `javascriptbl` (`javascript_id`, `javascript_name`, `javascript_content`, `javascript_description`, `compare_name`) VALUES
(1, 'constructor()', '<html>\r\n   <head>\r\n      <title>JavaScript constructor() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n      \r\n      <script type="text/javascript">\r\n         var num = new Number( 177.1234 );\r\n         document.write("num.constructor() is : " + num.constructor); \r\n      </script>\r\n   \r\n   </body>\r\n</html>', 'It returns a reference to the Number function that created the instance''s prototype.', 'constructor'),
(2, 'toExponential()', '<html>\r\n   <head>\r\n      <title>Javascript Method toExponential()</title>\r\n   </head>\r\n   \r\n   <body>\r\n      <script type="text/javascript">\r\n         var num=77.1234;\r\n         var val = num.toExponential(); \r\n         document.write("num.toExponential() is : " + val );\r\n         document.write("<br />"); \r\n         \r\n         val = num.toExponential(4);\r\n         document.write("num.toExponential(4) is : " + val );\r\n         document.write("<br />"); \r\n         \r\n         val = num.toExponential(2); \r\n         document.write("num.toExponential(2) is : " + val); \r\n         document.write("<br />"); \r\n         \r\n         val = 77.1234.toExponential(); \r\n         document.write("77.1234.toExponential()is : " + val ); \r\n         document.write("<br />"); \r\n         \r\n         val = 77.1234.toExponential(); \r\n         document.write("77 .toExponential() is : " + val); \r\n      </script>\r\n   \r\n   </body>\r\n</html>', 'Forces a number to display in exponential notation, even if the number is in the range in which JavaScript normally uses standard notation.', 'toExponential'),
(3, 'toFixed()', '<html>\r\n   <head>\r\n      <title>JavaScript toFixed() Method</title>\r\n   </head>\r\n   <body>\r\n      \r\n      <script type="text/javascript">\r\n         var num=177.1234;\r\n         document.write("num.toFixed() is : " + num.toFixed()); \r\n         document.write("<br />"); \r\n      \r\n         document.write("num.toFixed(6) is : " + num.toFixed(6)); \r\n         document.write("<br />"); \r\n      \r\n         document.write("num.toFixed(1) is : " + num.toFixed(1)); \r\n         document.write("<br />"); \r\n      \r\n         document.write("(1.23e+20).toFixed(2) is:" + (1.23e+20).toFixed(2)); \r\n         document.write("<br />"); \r\n      \r\n         document.write("(1.23e-10).toFixed(2) is : " + (1.23e-10).toFixed(2)); \r\n      </script>\r\n   \r\n   </body>\r\n</html>', 'Formats a number with a specific number of digits to the right of the decimal.', 'toFixed'),
(4, 'toLocaleString()', '<html>\r\n   <head>\r\n      <title>JavaScript toLocaleString() Method </title>\r\n   </head>\r\n   \r\n   <body>\r\n      \r\n      <script type="text/javascript">\r\n         var num = new Number(177.1234);\r\n         document.write( num.toLocaleString()); \r\n      </script>\r\n   \r\n   </body>\r\n</html>', 'Returns a string value version of the current number in a format that may vary according to a browser''s locale settings.', 'toLocale'),
(5, 'toPrecision()', '<html>\r\n   <head>\r\n      <title>JavaScript toPrecision() Method </title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var num = new Number(7.123456);\r\n         document.write("num.toPrecision() is " + num.toPrecision());\r\n         document.write("<br />"); \r\n         \r\n         document.write("num.toPrecision(4) is " + num.toPrecision(4)); \r\n         document.write("<br />"); \r\n         \r\n         document.write("num.toPrecision(2) is " + num.toPrecision(2)); \r\n         document.write("<br />"); \r\n         \r\n         document.write("num.toPrecision(1) is " + num.toPrecision(1)); \r\n      </script>\r\n   \r\n   </body>\r\n</html>', 'Defines how many total digits (including digits to the left and right of the decimal) to display of a number.', 'toPrecisionn'),
(6, 'toString()', '<html>\r\n   <head>\r\n      <title>JavaScript toString() Method </title>\r\n   </head>\r\n   \r\n   <body>\r\n      \r\n      <script type="text/javascript">\r\n         num = new Number(15);\r\n         document.write("num.toString() is " + num.toString());\r\n         document.write("<br />"); \r\n         \r\n         document.write("num.toString(2) is " + num.toString(2)); \r\n         document.write("<br />"); \r\n         \r\n         document.write("num.toString(4) is " + num.toString(4)); \r\n         document.write("<br />"); \r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method returns a string representing the specified object. The toString() method parses its first argument, and attempts to return a string representation in the specified radix (base).', 'toString'),
(7, 'valueOf()', '<html>\r\n   <head>\r\n      <title>JavaScript valueOf() Method </title>\r\n   </head>\r\n   \r\n   <body>\r\n      \r\n      <script type="text/javascript">\r\n         var num = new Number(15.11234);\r\n         document.write("num.valueOf() is " + num.valueOf());\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method returns the primitive value of the specified number object.', 'valueOf'),
(8, 'toSource()', '<html>\r\n   <head>\r\n      <title>JavaScript toSource() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         function book(title, publisher, price)\r\n         {\r\n            this.title = title;\r\n            this.publisher = publisher;\r\n            this.price = price;\r\n         }\r\n         \r\n         var newBook = new book("Perl","Leo Inc",200); \r\n         document.write(newBook.toSource()); \r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'Javascript boolean toSource() method returns a string representing the source code of the object.', 'toSource'),
(9, 'charAt()', '<html>\r\n   <head>\r\n      <title>JavaScript String charAt() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = new String( "This is string" );\r\n         document.writeln("str.charAt(0) is:" + str.charAt(0)); \r\n         document.writeln("<br />str.charAt(1) is:" + str.charAt(1)); \r\n         document.writeln("<br />str.charAt(2) is:" + str.charAt(2)); \r\n         document.writeln("<br />str.charAt(3) is:" + str.charAt(3)); \r\n         document.writeln("<br />str.charAt(4) is:" + str.charAt(4)); \r\n         document.writeln("<br />str.charAt(5) is:" + str.charAt(5)); \r\n      </script>\r\n      \r\n   </body>\r\n</html>\r\n', 'Returns the character at the specified index.', 'charAt'),
(10, 'charCodeAt()', '<html>\r\n   <head>\r\n      <title>JavaScript String charCodeAt() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = new String( "This is string" );\r\n         document.write("str.charCodeAt(0) is:" + str.charCodeAt(0)); \r\n         document.write("<br />str.charCodeAt(1) is:" + str.charCodeAt(1)); \r\n         document.write("<br />str.charCodeAt(2) is:" + str.charCodeAt(2)); \r\n         document.write("<br />str.charCodeAt(3) is:" + str.charCodeAt(3)); \r\n         document.write("<br />str.charCodeAt(4) is:" + str.charCodeAt(4)); \r\n         document.write("<br />str.charCodeAt(5) is:" + str.charCodeAt(5)); \r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'Returns a number indicating the Unicode value of the character at the given index.', 'charCode'),
(11, 'concat()', '<html>\r\n   <head>\r\n      <title>JavaScript String concat() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str1 = new String( "This is string one" );\r\n         var str2 = new String( "This is string two" );\r\n         var str3 = str1.concat( str2 );\r\n      \r\n         document.write("Concatenated String :" + str3); \r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method adds two or more strings and returns a new single string.', 'concat'),
(12, 'indexOf()', '<html>\r\n   <head>\r\n      <title>JavaScript String indexOf() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n      \r\n      <script type="text/javascript">\r\n         var str1 = new String( "This is string one" );\r\n         var index = str1.indexOf( "string" );\r\n         document.write("indexOf found String :" + index ); \r\n         \r\n         document.write("<br />");\r\n         var index = str1.indexOf( "one" );\r\n         document.write("indexOf found String :" + index ); \r\n      </script>\r\n   \r\n   </body>\r\n</html>', 'Returns the index within the calling String object of the first occurrence of the specified value, or -1 if not found.', 'indexOf'),
(13, 'lastIndexOf()', '<html>\r\n   <head>\r\n      <title>JavaScript String lastIndexOf() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str1 = new String( "This is string one and again string" );\r\n         var index = str1.lastIndexOf( "string" );\r\n         document.write("lastIndexOf found String :" + index ); \r\n         \r\n         document.write("<br />");\r\n         \r\n         var index = str1.lastIndexOf( "one" );\r\n         document.write("lastIndexOf found String :" + index ); \r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method returns the index within the calling String object of the last occurrence of the specified value, starting the search at fromIndex or -1 if the value is not found.', 'lastIndex'),
(14, 'localeCompare()', '<html>\r\n   <head>\r\n      <title>JavaScript String localeCompare() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str1 = new String( "This is beautiful string" );\r\n         var index = str1.localeCompare( "XYZ" );\r\n         document.write("localeCompare first :" + index ); \r\n         \r\n         document.write("<br />" ); \r\n         \r\n         var index = str1.localeCompare( "AbCD ?" );\r\n         document.write("localeCompare second :" + index ); \r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method returns a number indicating whether a reference string comes before or after or is the same as the given string in sorted order.', 'localeCompare'),
(15, 'length()', '<html>\r\n   <head>\r\n      <title>JavaScript String length Property</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = new String( "This is string" );\r\n         document.write("str.length is:" + str.length); \r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This property returns the number of characters in a string.', 'strlen'),
(16, 'match()', '<html>\r\n   <head>\r\n      <title>JavaScript String match() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = "For more information, see Chapter 3.4.5.1";\r\n         var re = /(chapter \\d+(\\.\\d)*)/i;\r\n         var found = str.match( re );\r\n         \r\n         document.write(found ); \r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method is used to retrieve the matches when matching a string against a regular expression.', 'match'),
(17, 'replace()', '<html>\r\n   <head>\r\n      <title>JavaScript String replace() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var re = /apples/gi;\r\n         var str = "Apples are round, and apples are juicy.";\r\n         var newstr = str.replace(re, "oranges");\r\n         \r\n         document.write(newstr ); \r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method finds a match between a regular expression and a string, and replaces the matched substring with a new substring.', 'replace'),
(18, 'search()', '<html>\r\n   <head>\r\n      <title>JavaScript String search() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var re = /apples/gi;\r\n         var str = "Apples are round, and apples are juicy.";\r\n         \r\n         if ( str.search(re) == -1 ){\r\n               document.write("Does not contain Apples" );\r\n            }\r\n            \r\n            else\r\n            {\r\n               document.write("Contains Apples" );\r\n            }\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method executes the search for a match between a regular expression and this String object.', 'search'),
(19, 'slice()', '<html>\r\n   <head>\r\n      <title>JavaScript String slice() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = "Apples are round, and apples are juicy.";\r\n         var sliced = str.slice(3, -2);\r\n         \r\n         document.write( sliced );\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method extracts a section of a string and returns a new string.', 'slice'),
(20, 'split()', '<html>\r\n   <head>\r\n      <title>JavaScript String split() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = "Apples are round, and apples are juicy.";\r\n         var splitted = str.split(" ", 3);\r\n         \r\n         document.write( splitted );\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method splits a String object into an array of strings by separating the string into substrings.', 'split'),
(21, 'substr() ', '<html>\r\n   <head>\r\n      <title>JavaScript String substr() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = "Apples are round, and apples are juicy.";\r\n         \r\n         document.write("(1,2): "    + str.substr(1,2));\r\n         document.write("<br />(-2,2): "   + str.substr(-2,2));\r\n         document.write("<br />(1): "      + str.substr(1));\r\n         document.write("<br />(-20, 2): " + str.substr(-20,2));\r\n         document.write("<br />(20, 2): "  + str.substr(20,2));\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method returns the characters in a string beginning at the specified location through the specified number of characters.', 'substr'),
(22, 'substring()', '<html>\r\n   <head>\r\n      <title>JavaScript String substring() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = "Apples are round, and apples are juicy.";\r\n         \r\n         document.write("(1,2): "    + str.substring(1,2));\r\n         document.write("<br />(0,10): "   + str.substring(0, 10));\r\n         document.write("<br />(5): "      + str.substring(5));\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method returns a subset of a String object.', 'substring'),
(23, 'toLocaleLowerCase()', '<html>\r\n   <head>\r\n      <title>JavaScript String toLocaleLowerCase() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = "Apples are round, and Apples are Juicy.";\r\n         document.write(str.toLocaleLowerCase( ));\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method is used to convert the characters within a string to lowercase while respecting the current locale. For most languages, it returns the same output as toLowerCase.', 'lower'),
(24, 'toLocaleUpperCase()', '<html>\r\n   <head>\r\n      <title>JavaScript String toLocaleUpperCase() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = "Apples are round, and Apples are Juicy.";\r\n         document.write(str.toLocaleUpperCase( ));\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method is used to convert the characters within a string to uppercase while respecting the current locale. For most languages, it returns the same output as toUpperCase.', 'upper'),
(25, 'toLowerCase()', '<html>\r\n   <head>\r\n      <title>JavaScript String toLowerCase() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = "Apples are round, and Apples are Juicy.";\r\n         document.write(str.toLowerCase( ));\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method returns the calling string value converted to lowercase.', 'lowercase'),
(26, 'toString()', '<html>\r\n   <head>\r\n      <title>JavaScript String toString() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = "Apples are round, and Apples are Juicy.";\r\n         document.write(str.toString( ));\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method returns a string representing the specified object.', 'toString()'),
(27, 'toUpperCase()', '<html>\r\n   <head>\r\n      <title>JavaScript String toUpperCase() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = "Apples are round, and Apples are Juicy.";\r\n         document.write(str.toUpperCase( ));\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method returns the calling string value converted to uppercase.', 'upper'),
(28, 'anchor()', '<html>\r\n   <head>\r\n      <title>JavaScript String anchor() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = new String("Hello world");\r\n         alert(str.anchor( "myanchor" ));\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method creates an HTML anchor that is used as a hypertext target.', 'anchor'),
(29, 'big()', '<html>\r\n   <head>\r\n      <title>JavaScript String big() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = new String("Hello world");\r\n         alert(str.big());\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method causes a string to be displayed in a big font as if it were in a BIG tag.', 'big'),
(30, 'blink()', '<html>\r\n   <head>\r\n      <title>JavaScript String blink() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = new String("Hello world");\r\n         alert(str.blink());\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method causes a string to blink as if it were in a BLINK tag.', 'blink'),
(31, 'bold()', '<html>\r\n   <head>\r\n      <title>JavaScript String bold() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = new String("Hello world");\r\n         alert(str.bold());\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'This method causes a string to be displayed as bold as if it were in a <b> tag.', 'bold'),
(32, 'fontcolor()', '<html>\r\n   <head>\r\n      <title>JavaScript String fontcolor() Method</title>\r\n   </head>\r\n   \r\n   <body>\r\n   \r\n      <script type="text/javascript">\r\n         var str = new String("Hello world");\r\n         alert(str.fontcolor( "red" ));\r\n      </script>\r\n      \r\n   </body>\r\n</html>', 'Causes a string to be displayed in the specified color', 'fontcolor');

-- --------------------------------------------------------

--
-- Table structure for table `pascaltbl`
--

CREATE TABLE `pascaltbl` (
  `pascal_id` int(11) NOT NULL,
  `pascal_name` varchar(250) NOT NULL,
  `pascal_description` text NOT NULL,
  `pascal_content` text NOT NULL,
  `compare_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pascaltbl`
--

INSERT INTO `pascaltbl` (`pascal_id`, `pascal_name`, `pascal_description`, `pascal_content`, `compare_name`) VALUES
(1, 'abs', 'The abs function returns the absolute value (i.e. the magnitude) of the parameter passed to it. The type of the value returned by this function is always the same as the type of its parameter.', '  abs(-10)  returns  10\n   abs(10)   returns  10\n   abs(-6.7) returns  6.7\n   abs(6.7)  returns  6.7', 'abs'),
(2, 'concat', 'The concat function returns a string value formed by concatenating (i.e. joining) the parameters passed to it.', ' concat(''abc'', ''123'', ''!'') returns ''abc123!''', 'concat'),
(3, 'copy', 'The copy function accepts up to three of the parameters described below (the last parameter is optional), and returns a value of type string which is formed by copying zero or more characters from the first parameter.', '  copy(''Testing...'', 5, 2)         returns   ''in''\r\n   copy(''Testing...'', 7)             returns   ''g...''\r\n   copy(''Testing...'', 1, 1000)    returns   ''Testing...''\r\n   copy(''Testing...'', 50)            returns   ''''', 'copy'),
(4, 'countwords ', 'The countwords function accepts up to two of the parameters described below (the last parameter is optional), and returns a value of type integer type, which is equal to the number of words in the first parameter. The term word is used to mean a group of contiguous characters, seperated by another group of characters called deliminators.', ' countwords(''example'')             returns  1\r\n   countwords(''this is an example'')  returns  4', 'countwords'),
(5, 'islower', 'The islower function returns a value of type boolean, which indicates whether the parameter passed to it is a lowercase alphabetic character. If the parameter is a lowercase alphabetic character then the value true is returned, and if the parameter is not a lowercase alphabetic character then the value false is returned.', '  islower(''a'')  returns   true\r\n    islower(''A'')  returns   false\r\n    islower(''1'')  returns   false\r\n    islower(''@'')  returns   false\r\n    islower(''_'')  returns   false', 'islower'),
(6, 'isprint', 'The isprint function returns a value of type boolean, which indicates whether the parameter passed to it is a printable character. If the parameter is a printable character then the value true is returned, and if the parameter is not a printable character then the value false is returned.', 'isprint(''A'')     returns   true\r\n   isprint(''3'')     returns   true\r\n   isprint(''+'')     returns   true\r\n   isprint('' '')     returns   true\r\n   isprint(chr(10)) returns   false\r\n   isprint(chr(8)) returns    false', 'isprint'),
(7, 'isupper', 'The isupper function returns a value of type boolean, which indicates whether the parameter passed to it is a uppercase alphabetic character. If the parameter is a uppercase alphabetic character then the value true is returned, and if the parameter is not a uppercase alphabetic character then the value false is returned.', ' isupper(''a'')  returns   false\r\n    isupper(''A'')  returns   true\r\n    isupper(''1'')  returns   false\r\n    isupper(''@'')  returns   false\r\n    isupper(''_'')  returns   false', 'isupper'),
(8, 'pi ', 'The pi function returns the value of the mathematical constant pi. The type of the value returned by this function is always real.', ' writeln(pi)  displays   3.14E+00', 'pi'),
(9, 'uppercase', 'The uppercase function returns a string formed by converting all lowercase characters in the parameter passed to it, into uppercase characters, and leaving all non-lowercase characters in the parameter unchanged.', '  uppercase(''Hello!!'')  returns   ''HELLO!!''', 'upper'),
(10, 'sqrt', 'The sqrt function returns the square root of the value of the parameter passed to it. The type of the value returned by this function is always real.', ' sqrt(1)   returns  1.0\r\n   sqrt(9)   returns  3.0\r\n   sqrt(25)  returns  5.0', 'sqrt'),
(11, 'trim ', 'The trim function returns a string formed by removing all leading and trailing spaces from the parameter passed to it.', '  trim('' hello!! '')  returns ''hello!!''', 'trim'),
(12, 'trunc ', 'The trunc function truncates the parameter passed to it (i.e. returns the integer number part of the the parameter). The type of the value returned by this function is always integer.', 'trunc(7.234)  returns 7', 'trunc'),
(13, 'round', 'The round function rounds the parameter passed to it (i.e. returns the integer number that is closest in value to the parameter). The type of the value returned by this function is always integer.', 'round(7.4)  returns  7\r\n   round(7.5)  returns  8\r\n   round(-7.4)  returns -7\r\n   round(-7.5)  returns -8', 'round'),
(14, 'log', 'The log function returns the logarithm to the base 10 of the parameter passed to it. The type of the value returned by this function is always real.', ' log(1)    returns   0.0\r\n   ln(10)    returns   1.0\r\n   ln(100)   returns   2.0', 'log'),
(15, 'exp', 'The exp function returns the value of the mathematical constant e raised to a power. The type of the value returned by this function is always real.', 'exp(2)   returns   7.389...', 'exp'),
(16, 'isdigit', 'The isdigit function returns a value of type boolean, which indicates whether the parameter passed to it is a digit. If the parameter is a digit then the value true is returned, and if the parameter is not a digit then the value false is returned.', '   isdigit(''a'')  returns   false\r\n    isdigit(''A'')  returns   false\r\n    isdigit(''1'')  returns   true\r\n    isdigit(''@'')  returns   false\r\n    isdigit(''_'')  returns   false\r\nPortability', 'isdigit'),
(17, 'chr ', 'The chr function returns the character whose ordinal value is equal to the parameter passed to it. So if X is the parameter passed to this function, then the value returned by this function Y is the character value satisfying the following equation:\r\n\r\nX = ord(Y)', 'chr(64) returns ''@'' (assuming the ASCII or ANSI character set).', 'chr'),
(18, 'isnull', 'The isnull function returns a value of type boolean, which indicates whether the parameter passed to it is null. If the parameter is null then the value true is returned, and if the parameter is not null then the value false is returned. This function is usually used to test values retrieved from databases with recordset.field.', 'new(rs);\r\n   rs.open(conn, ''select last_name, first_name from customer'', rsforward);\r\n   while not rs.eof\r\n      begin\r\n         if isnull(rs.field(''last_name'')) then\r\n            write(''NULL'')\r\n         else\r\n            write(rs.field(''last_name''));\r\n         write('', '');\r\n         if isnull(rs.field(''first_name'')) then\r\n            writeln(''NULL'')\r\n         else\r\n            writeln(rs.field(''first_name''))\r\n         rs.movenext;\r\n      end;\r\n   rs.close;\r\n   dispose(rs);', 'isnull'),
(19, 'isspace', 'The isspace function returns a value of type boolean, which indicates whether the parameter passed to it is a whitespace character (i.e. space, tab, linefeed, formfeed, or carriage return). If the parameter is a whitespace character then the value true is returned, and if the parameter is not a whitespace character then the value false is returned.', ' isspace('' '')     returns   true\r\n   isspace(chr(9))  returns   true  (assuming chr(9) is TAB)\r\n   isspace(chr(10)) returns   true  (assuming chr(10) is LINEFEED)\r\n   isspace(chr(13)) returns   true  (assuming chr(13) is CARRIAGE RETURN)\r\n   isspace(''A'')     returns   false\r\n   isspace(''6'')     returns   false\r\n   isspace(''$'')     returns   false', 'isspace'),
(20, 'length', 'The length function returns the number of characters in a string or character, or the number of values in a list. The type of the value returned by this function is always integer.', 'length('''')        returns   0\r\n    length(''a'')       returns  1\r\n    length(''hello'')   returns  5\r\nAnd if l is a list of integer then\r\n\r\n    new(l);\r\n    length(l);         returns  0\r\nand\r\n\r\n    new(l);\r\n    insert(1, l);\r\n    insert(78, l);\r\n    insert(45, l);\r\n    insert(3, l);\r\n    length(l);         returns  4', 'strlen'),
(21, 'reverse ', 'The reverse function returns a value of type string that is formed by reversing the order of the characters in the parameter passed to it. The type of the value returned by this function is always string.', ' reverse(''Hello!!'')   returns  ''!!olleH''', 'reversed'),
(22, 'cos ', 'The cos function returns the cosine of the parameter passed to it. The type of the value returned by this function is always real.', 'cos(pi/3)  returns  0.5', 'cos'),
(23, 'pos ', 'The pos function accepts up to three of the parameters described below (the last parameter is optional), searches for one string in another string, and returns the position of the first string in the second string, or zero if the first string was not found in the second string.', ' pos(''o'', ''Hello world'')     returns  5\r\n   pos(''o'', ''Hello world'', 1)  returns  5\r\n   pos(''o'', ''Hello world'', 6)  returns  8\r\n   pos(''o'', ''Hello world'', 9)  returns  0', 'pos'),
(24, 'isalpha', 'The isalpha function returns a value of type boolean, which indicates whether the parameter passed to it is an alphabetic character. If the parameter is an alphabetic character then the value true is returned, and if the parameter is not an alphabetic character then the value false is returned.', '  isalpha(''a'')  returns   true\r\n    isalpha(''A'')  returns   true\r\n    isalpha(''1'')  returns   false\r\n    isalpha(''@'')  returns   false\r\n    isalpha(''_'')  returns   false', 'isalpha');

-- --------------------------------------------------------

--
-- Table structure for table `phptbl`
--

CREATE TABLE `phptbl` (
  `php_id` int(11) NOT NULL,
  `php_name` varchar(250) NOT NULL,
  `php_content` text NOT NULL,
  `php_description` text NOT NULL,
  `compare_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phptbl`
--

INSERT INTO `phptbl` (`php_id`, `php_name`, `php_content`, `php_description`, `compare_name`) VALUES
(1, 'addcslashes() ', '<?php \r\n$str = addcslashes("Hello World!","W");\r\necho($str); \r\n?>', 'Returns a string with backslashes in front of the specified characters', 'addcslashes'),
(2, 'addslashes()', '<?php \r\n$str = addslashes(''What does "yolo" mean?'');\r\necho($str); \r\n?>', 'Returns a string with backslashes in front of predefined characters', 'addslashes'),
(3, 'bin2hex()', '<?php \r\n$str = bin2hex("Hello World!");\r\necho($str); \r\n?>', 'Converts a string of ASCII characters to hexadecimal values', 'hex'),
(4, 'chop() ', '<?php\r\n$str = "Hello World!";\r\necho $str . "<br>";\r\necho chop($str,"World!");\r\n?>', 'Removes whitespace or other characters from the right end of a string', 'chop'),
(5, 'chr()', '<?php\r\necho chr(52) . "<br>"; // Decimal value\r\necho chr(052) . "<br>"; // Octal value\r\necho chr(0x52) . "<br>"; // Hex value\r\n?>\r\n', 'Returns a character from a specified ASCII value', 'chr'),
(6, 'chunk_split()', '<?php\r\n$str = "Hello world!";\r\necho chunk_split($str,1,".");\r\n?>', 'Splits a string into a series of smaller parts', 'chunk'),
(7, 'convert_cyr_string()', '<?php\r\n$str = "Hello world! ???";\r\necho $str . "<br>";\r\necho convert_cyr_string($str,''w'',''a'');\r\n?>', 'Convert a string from one character-set to another', 'convert'),
(8, 'str_replace() ', '<?php\r\necho str_replace("world","Peter","Hello world!");\r\n?>', 'Replaces some characters in a string (case-sensitive)', 'replace'),
(9, 'str_split()', '<?php\r\nprint_r(str_split("Hello"));\r\n?>', 'Splits a string into an array', 'split'),
(10, 'strchr()', '<?php\r\necho strchr("Hello world!","world");\r\n?>', 'Finds the first occurrence of a string inside another string (alias of strstr())', 'strchr'),
(11, 'strcmp()', '<?php\r\necho strcmp("Hello world!","Hello world!");\r\n?>', 'Compares two strings (case-sensitive)', 'strcmp'),
(12, 'strlen() ', '<?php\r\necho strlen("Hello");\r\n?>', 'Returns the length of a string', 'strlen'),
(13, 'strrchr()', '<?php\r\necho strrchr("Hello world!","world");\r\n?>', 'Finds the last occurrence of a string inside another string', 'strrchr'),
(14, 'strrev()', '<?php\r\necho strrev("Hello World!");\r\n?>', 'Reverses a string', 'strrev'),
(15, 'strstr()', '<?php\r\necho strstr("Hello world!","world");\r\n?>', 'TFinds the first occurrence of a string inside another string (case-sensitive)', 'strstr'),
(16, 'substr() ', '<?php\r\necho substr("Hello world",6);\r\n?>', 'Returns a part of a string', 'substr'),
(17, 'trim()', '<?php\r\n$str = "Hello World!";\r\necho $str . "<br>";\r\necho trim($str,"Hed!");\r\n?>', 'Removes whitespace or other characters from both sides of a string', 'trim'),
(18, 'wordwrap() ', '<?php\r\n$str = "An example of a long word is: Supercalifragulistic";\r\necho wordwrap($str,15,"<br>\\n");\r\n?>', 'Wraps a string to a given number of characters', 'wordwrap'),
(19, 'strtolower() ', '<?php\r\necho strtolower("Hello WORLD.");\r\n?>', 'Converts a string to lowercase letters', 'lower'),
(20, 'strtoupper()', '<?php\r\necho strtoupper("Hello WORLD!");\r\n?>', 'Converts a string to uppercase letters', 'upper'),
(21, 'strripos() ', '<?php\r\necho strripos("I love php, I love php too!","PHP");\r\n?>', 'Finds the position of the last occurrence of a string inside another string (case-insensitive)', 'strripos'),
(22, 'strrpos()', '<?php\r\necho strrpos("I love php, I love php too!","php");\r\n?>', 'Finds the position of the last occurrence of a string inside another string (case-sensitive)', 'strrpos'),
(23, 'print()', '<?php \r\nprint "Hello world!"; \r\n?>', 'Outputs one or more strings', 'print'),
(24, 'printf()', '<?php\r\n$number = 9;\r\n$str = "Beijing";\r\nprintf("There are %u million bicycles in %s.",$number,$str);\r\n?>', 'Outputs a formatted string', 'printf'),
(25, 'str_repeat() ', '<?php\r\necho str_repeat(".",13);\r\n?>', 'Repeats a string a specified number of times', 'repeat');

-- --------------------------------------------------------

--
-- Table structure for table `pythontbl`
--

CREATE TABLE `pythontbl` (
  `python_id` int(11) NOT NULL,
  `python_name` varchar(250) NOT NULL,
  `python_content` text NOT NULL,
  `python_description` text NOT NULL,
  `compare_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pythontbl`
--

INSERT INTO `pythontbl` (`python_id`, `python_name`, `python_content`, `python_description`, `compare_name`) VALUES
(1, 'abs()', 'x = abs(-7.25)', 'Returns the absolute value of a number', 'abs'),
(2, 'all()', 'mylist = [True, True, True]\r\nx = all(mylist)', 'Returns True if all items in an iterable object are true', 'all'),
(3, 'any()', 'mylist = [False, True, False]\r\nx = any(mylist)', 'Returns True if any item in an iterable object is true', 'any'),
(4, 'bool()', 'x = bool(1)', 'Returns the boolean value of the specified object', 'bool'),
(5, 'compile() ', 'mytext = ''print(55)''\r\nx = compile(''mytext'', ''test'', ''eval'')\r\nexec(x)', 'Returns the specified source as an object, ready to be executed', 'compile'),
(6, 'dir() ', 'class Person:\r\n  name = "John"\r\n  age = 36\r\n  country = "Norway"\r\n\r\nprint(dir(Person))', 'Returns a list of the specified object''s properties and methods', 'dir'),
(7, 'divmod()', 'x = divmod(5, 2)', 'Returns the quotient and the remainder when argument1 is divided by argument2', 'divmod'),
(8, 'enumerate()', 'x = (''apple'', ''banana'', ''cherry'')\r\ny = enumerate(x)', 'Takes a collection (e.g. a tuple) and returns it as an enumerate object', 'enumerate'),
(9, 'eval()', 'x = ''print(55)''\r\neval(x)', 'Evaluates and executes an expression', 'eval'),
(10, 'float()', 'x = float(3)', 'Returns a floating point number', 'float'),
(11, 'id()', 'x = (''apple'', ''banana'', ''cherry'')\r\ny = id(x)', 'Returns the id of an object', 'id'),
(12, 'input()', 'print(''Enter your name:'')\r\nx = input()\r\nprint(''Hello, '' + x)\r\n', 'Allowing user input', 'input'),
(13, 'list()', 'x = list((''apple'', ''banana'', ''cherry''))', 'Returns a list', ''),
(14, 'range()', 'x = range(6)\r\nfor n in x:\r\n  print(n)', 'Returns a sequence of numbers, starting from 0 and increments by 1 (by default)', 'range'),
(15, 'set()', 'x = set((''apple'', ''banana'', ''cherry''))', 'Returns a new set object', 'set'),
(16, 'slice()', 'a = ("a", "b", "c", "d", "e", "f", "g", "h")\r\nx = slice(2)\r\nprint(a[x])', 'Returns a slice object', 'slice'),
(17, 'sorted()', 'a = ("b", "g", "a", "d", "f", "c", "h", "e")\r\nx = sorted(2)\r\nprint(a[x])', 'Returns a sorted list', 'sorted'),
(18, 'str()', 'x = str(3.5)', 'Returns a string object', 'str'),
(19, 'reversed()', 'alph = ["a", "b", "c", "d"]\r\nralph = reversed(alph)\r\nfor x in ralph:\r\n  print(x)', 'Returns a reversed iterator', 'reversed'),
(20, 'print()', 'print("Hello World")', 'Prints to the standard output device', 'print'),
(21, 'pow()', 'x = pow(4, 3)', 'Returns the value of x to the power of y', 'pow'),
(22, 'object()', 'x = object()', 'Returns a new object', 'object'),
(23, 'max()', 'x = max(5, 10)', 'Returns the largest item in an iterable', 'max'),
(24, 'min()', 'x = max(5, 10)', 'Returns the smallest item in an iterable', 'min'),
(25, 'format()', 'x = format(0.5, ''%'')', 'Formats a specified value', 'format'),
(26, 'hex()', 'x = hex(255)', 'Converts a number into a hexadecimal value', 'hex'),
(27, 'upper()', 'txt = "Hello my friends"\r\n\r\nx = txt.upper()\r\n\r\nprint(x)', 'Converts a string into upper case', 'upper'),
(28, 'split()', 'txt = "welcome to the jungle"\r\n\r\nx = txt.split()\r\n\r\nprint(x)', 'Splits the string at the specified separator, and returns a list', 'split'),
(29, 'replace()', 'txt "I like bananas"\r\n\r\nx = txt.replace("bananas", "apples")\r\n\r\nprint(x)', 'Returns a string where a specified value is replaced with a specified value', 'replace'),
(30, 'join()', 'myTuple = ("John", "Peter", "Vicky")\r\n\r\nx = "#".join(myTuple)\r\n\r\nprint(x)', 'Joins the elements of an iterable to the end of the string', 'join');

-- --------------------------------------------------------

--
-- Table structure for table `sql_tbl`
--

CREATE TABLE `sql_tbl` (
  `sql_id` int(11) NOT NULL,
  `sql_name` varchar(250) NOT NULL,
  `sql_content` text NOT NULL,
  `sql_description` text NOT NULL,
  `compare_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sql_tbl`
--

INSERT INTO `sql_tbl` (`sql_id`, `sql_name`, `sql_content`, `sql_description`, `compare_name`) VALUES
(1, 'ASCII', 'SELECT ASCII(CustomerName) AS NumCodeOfFirstChar\r\nFROM Customers;', 'Returns the number code that represents the specific character', 'ascii'),
(2, 'CHAR()', 'SELECT CHAR(65) AS NumberCodeToCharacter;', 'Returns the ASCII character based on the number code', 'chr'),
(3, 'CONCAT()', 'SELECT CONCAT(''W3Schools'', ''.com'');', 'Concatenates two or more strings together', 'concat'),
(4, 'FORMAT()', 'SELECT FORMAT(''10/01/2018'', ''MMMM DD, yyyy'');', 'Returns a value formatted with the specified format (and an optional culture)', 'format'),
(5, 'LOWER()', 'SELECT LOWER(''SQL Tutorial is FUN!'');', 'Converts a string to lower-case', 'lower'),
(6, 'LTRIM()', 'SELECT LTRIM(''     SQL Tutorial'') AS LeftTrimmedString;', 'Removes leading spaces from a string', 'trim'),
(7, 'REPLACE()', 'SELECT REPLACE(''SQL Tutorial'', ''T'', ''M'');\r\n', 'Replaces a sequence of characters in a string with another set of characters', 'replace'),
(8, 'REVERSE()', 'SELECT REVERSE(''SQL Tutorial'');', 'Reverses a string and returns the result', 'reversed'),
(9, 'TRANSLATE()', 'SELECT TRANSLATE(''SQL Tutorial'', ''SQL'', ''CSS''); // Results in CSS Tutorial\r\n', 'Returns the string from the first argument after the characters specified in the second argument are translated into the characters specified in the third argument.', 'translate'),
(10, 'SUBSTRING()', 'SELECT SUBSTRING(''SQL Tutorial'', 1, 3) AS ExtractString;', 'Extracts a substring from a string', 'substring'),
(11, 'TRIM()', 'SELECT TRIM(''     SQL Tutorial!     '') AS TrimmedString;', 'Removes the space character or other specified characters from the start or end of a string', 'trim'),
(12, 'UPPER()', 'SELECT UPPER(''SQL Tutorial is FUN!'');', 'Converts a string to upper-case', 'upper'),
(13, 'STR()', 'SELECT STR(185);', 'Returns a string representation of a number', 'str'),
(14, 'REPLICATE()', 'SELECT REPLICATE(''SQL Tutorial'', 5);', 'Repeats a string value a specified number of times', 'replicate'),
(15, 'ABS()', 'SELECT Abs(-243.5) AS AbsNum;', 'Returns the absolute value of a number', 'abs'),
(16, 'COUNT()', 'SELECT COUNT(ProductID) AS NumberOfProducts FROM Products;', 'Returns the count of an expression', 'count'),
(17, 'MAX()', 'SELECT MAX(Price) AS LargestPrice FROM Products;', 'Returns the maximum value of an expression', 'max'),
(18, 'MIN()', 'SELECT MIN(Price) AS SmallestPrice FROM Products;', 'Returns the minimum value of an expression', 'min'),
(19, 'POWER()', 'SELECT POWER(4, 2);', 'Returns m raised to the nth power', 'pow'),
(20, 'SUM()', 'SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;', 'Returns the summed value of an expression', 'sum'),
(21, 'RAND()', 'SELECT RAND();', 'Returns a random number or a random number within a range', 'rand'),
(22, 'ROUND() ', 'SELECT ROUND(235.415, 2) AS RoundValue;', 'Returns a number rounded to a certain number of decimal places', 'round'),
(23, 'DATEADD() ', 'SELECT DATEADD(year, 1, ''2017/08/25'') AS DateAdd;', 'Returns a date after a certain time/date interval has been added', 'dateadd'),
(24, 'DATEDIFF()', 'SELECT DATEDIFF(year, ''2017/08/25'', ''2011/08/25'') AS DateDiff;', 'Returns the difference between two date values, based on the interval specified', 'datediff'),
(25, 'MONTH()', 'SELECT MONTH(''2017/08/25'') AS Month;', 'Returns the month (from 1 to 12) for a given date', 'month'),
(26, 'GETDATE()', 'SELECT GETDATE();', 'Returns the current date and time', 'getdate'),
(27, 'YEAR()', 'SELECT YEAR(''2017/08/25'') AS Year;', 'Returns the year (as a four-digit number) for a given date', 'year'),
(28, 'CONVERT()', 'SELECT CONVERT(int, 25.65);', 'Converts an expression from one data type to another', 'convert'),
(29, 'ISNULL()', 'SELECT ISNULL(NULL, ''W3Schools.com'');', 'Lets you return an alternative value when an expression is NULL', 'null'),
(30, 'ISNUMERIC() ', 'Returns 1 if the expression is a valid number, otherwise 0', 'SELECT ISNUMERIC(4567);', 'numeric');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cplustbl`
--
ALTER TABLE `cplustbl`
  ADD PRIMARY KEY (`cplus_id`);

--
-- Indexes for table `css1_tbl`
--
ALTER TABLE `css1_tbl`
  ADD PRIMARY KEY (`css1_id`);

--
-- Indexes for table `ctbl`
--
ALTER TABLE `ctbl`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `htmltbl`
--
ALTER TABLE `htmltbl`
  ADD PRIMARY KEY (`html_id`);

--
-- Indexes for table `javascriptbl`
--
ALTER TABLE `javascriptbl`
  ADD PRIMARY KEY (`javascript_id`);

--
-- Indexes for table `pascaltbl`
--
ALTER TABLE `pascaltbl`
  ADD PRIMARY KEY (`pascal_id`);

--
-- Indexes for table `phptbl`
--
ALTER TABLE `phptbl`
  ADD PRIMARY KEY (`php_id`);

--
-- Indexes for table `pythontbl`
--
ALTER TABLE `pythontbl`
  ADD PRIMARY KEY (`python_id`);

--
-- Indexes for table `sql_tbl`
--
ALTER TABLE `sql_tbl`
  ADD PRIMARY KEY (`sql_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cplustbl`
--
ALTER TABLE `cplustbl`
  MODIFY `cplus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `css1_tbl`
--
ALTER TABLE `css1_tbl`
  MODIFY `css1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ctbl`
--
ALTER TABLE `ctbl`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `htmltbl`
--
ALTER TABLE `htmltbl`
  MODIFY `html_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `javascriptbl`
--
ALTER TABLE `javascriptbl`
  MODIFY `javascript_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `pascaltbl`
--
ALTER TABLE `pascaltbl`
  MODIFY `pascal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `phptbl`
--
ALTER TABLE `phptbl`
  MODIFY `php_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `pythontbl`
--
ALTER TABLE `pythontbl`
  MODIFY `python_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `sql_tbl`
--
ALTER TABLE `sql_tbl`
  MODIFY `sql_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
