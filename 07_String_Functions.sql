/* ============================================================================== 
   SQL String Functions
-------------------------------------------------------------------------------
   This document provides an overview of SQL string functions, which allow 
   manipulation, transformation, and extraction of text data efficiently.

   Table of Contents:
     1. Manipulations
        - CONCAT
        - LOWER
        - UPPER
	- TRIM
	- REPLACE
     2. Calculation
        - LEN
     3. Substring Extraction
        - LEFT
        - RIGHT
        - SUBSTRING
=================================================================================
*/

/* ============================================================================== 
   CONCAT() - String Concatenation
=============================================================================== */

-- Concatenate first name and country into one column
SELECT 
    CONCAT(RawLine, '-', 'Coimbtore') AS full_info
FROM customers

/* ============================================================================== 
   LOWER() & UPPER() - Case Transformation
=============================================================================== */

-- Convert the first name to lowercase
select * from Customers
SELECT 
    LOWER(RawLine) AS lower_case_name
FROM customers

-- Convert the first name to uppercase
SELECT 
    UPPER(RawLine) AS upper_case_name
FROM customers
	
/* ============================================================================== 
   TRIM() - Remove White Spaces
=============================================================================== */



/* ============================================================================== 
   REPLACE() - Replace or Remove old value with new one
=============================================================================== */
-- Remove dashes (-) from a phone number
SELECT
'123-456-7890' AS phone,
REPLACE('123-456-7890', '-', '/') AS clean_phone

-- Replace File Extence from txt to csv
SELECT
'report.txt' AS old_filename,
REPLACE('report.txt', '.txt', '.csv') AS new_filename
	
/* ============================================================================== 
   LEN() - String Length & Trimming
=============================================================================== */

-- Calculate the length of each customer's first name
SELECT 
    RawLine, 
    LEN(RawLine) AS name_length
FROM customers
	
/* ============================================================================== 
   LEFT() & RIGHT() - Substring Extraction
=============================================================================== */

-- Retrieve the first two characters of each first name
SELECT 
    RawLine,
    LEFT(TRIM(RawLine), 2) AS first_2_chars
FROM customers

-- Retrieve the last two characters of each first name
SELECT 
    RawLine,
    RIGHT(RawLine, 2) AS last_2_chars
FROM customers
	
/* ============================================================================== 
   SUBSTRING() - Extracting Substrings
=============================================================================== */

-- Retrieve a list of customers' first names after removing the first character
SELECT 
    RawLine,
    SUBSTRING(TRIM(RawLine), 2, LEN(RawLine)) AS trimmed_name
FROM customers	

/* ==============================================================================
   NESTING FUNCTIONS
===============================================================================*/

-- Nesting
SELECT
RawLine, 
UPPER(LOWER(RawLine)) AS nesting
FROM customers
