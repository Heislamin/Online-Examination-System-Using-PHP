-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2024 at 07:53 AM
-- Server version: 8.0.32
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int NOT NULL,
  `course_name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(1, 'msccs'),
(2, 'aiml'),
(3, 'mca');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int NOT NULL,
  `exam_name` varchar(20) NOT NULL,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `topic_id` int NOT NULL,
  `exam_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_question`
--

CREATE TABLE `exam_question` (
  `exam_mcq_id` int NOT NULL,
  `exam_id` int NOT NULL,
  `mcq_id` int NOT NULL,
  `user_answer` varchar(255) DEFAULT NULL,
  `user_answer_marks` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `exam_question`
--

INSERT INTO `exam_question` (`exam_mcq_id`, `exam_id`, `mcq_id`, `user_answer`, `user_answer_marks`) VALUES
(51, 1714192988, 30, 'All of the above', 0),
(52, 1714192988, 111, 'pointers; next', 0),
(53, 1714192988, 86, 'It denotes an empty list', 0),
(54, 1714192988, 18, ' Operating system reallocates memory', 0),
(55, 1714192988, 112, 'previous; next', 0),
(56, 1714192988, 5, 'It points to the last node ', 0),
(57, 1714192988, 115, 'O(n^2)', 0),
(58, 1714192988, 100, 'Add an element at the end of the list', 0),
(59, 1714192988, 149, 'Inserts every K nodes in a linked li', 0),
(60, 1714192988, 9, 'Global allocation', 0),
(61, 1714193035, 131, 'Array implementation of list', 0),
(62, 1714193035, 93, 'union?', 0),
(63, 1714193035, 145, 'segmentation fault', 0),
(64, 1714193035, 39, 'merge sort', 0),
(65, 1714193035, 116, 'singly linked list', 0),
(66, 1714193035, 102, 'Reversing the list', 0),
(67, 1714193035, 135, 'succeeding', 0),
(68, 1714193035, 139, 'Reverses a doubly linked list', 0),
(69, 1714193035, 141, 'Deletes the first node of the linked lis', 0),
(70, 1714193035, 130, '?Linked list', 0),
(71, 1714194350, 28, 'Neither requires memory management', 0),
(72, 1714194350, 127, 'next', 0),
(73, 1714194350, 144, 'Finds the nth node from the beginning of the linked list', 0),
(74, 1714194350, 107, 'Floyd?s Cycle Detection Algorithm', 0),
(75, 1714194350, 78, 'Updating the next pointer of the last node', 0),
(76, 1714194350, 24, 'By the last node pointing to null', 0),
(77, 1714194350, 63, '. By swapping pointers', 0),
(78, 1714194350, 129, 'for seperate chaining in hash tables', 0),
(79, 1714194350, 140, '10', 0),
(80, 1714194350, 109, 'Counting the number of nodes until a NULL pointer is encountered', 0),
(81, 1714194400, 90, 'It simplifies certain algorithms like round-robin scheduling', 0),
(82, 1714194400, 125, 'merge', 0),
(83, 1714194400, 13, 'It points to the next node in the sequence', 0),
(84, 1714194400, 89, 'It points to the last node in the list', 0),
(85, 1714194400, 84, 'When the current node', 0),
(86, 1714194400, 122, 'data; previous', 0),
(87, 1714194400, 138, '10', 0),
(88, 1714194400, 137, 'deletion at the back', 0),
(89, 1714194400, 99, 'Insertion at the front of the linked list', 0),
(90, 1714194400, 106, 'It rearranges elements to optimize access patterns.', 0),
(91, 1714194577, 74, 'Dynamic memory allocation', 0),
(92, 1714194577, 20, 'To allocate memory for nodes', 0),
(93, 1714194577, 62, 'Insertion at the end', 0),
(94, 1714194577, 73, 'Finding the middle element', 0),
(95, 1714194577, 8, 'A node that is disconnected from the list', 0),
(96, 1714194577, 64, 'It depends on the specific operation', 0),
(97, 1714194577, 53, 'Deletion at the end', 0),
(98, 1714194577, 59, 'By checking for duplicate elements', 0),
(99, 1714194577, 77, 'Use the free function', 0),
(100, 1714194577, 44, '2 pointer', 0),
(101, 1714194689, 146, 'Merges two singly linked lists into one', 0),
(102, 1714194689, 126, 'O(1)', 0),
(103, 1714194689, 148, '10 30', 0),
(104, 1714194689, 120, 'O(1)', 0),
(105, 1714194689, 133, 'Head node is known in circular linked list', 0),
(106, 1714194689, 1, 'A type of tree structure', 0),
(107, 1714194689, 58, 'Operating system reallocates memory', 0),
(108, 1714194689, 91, ' \r\n6 <--> 5 <--> 4 <--> 3 <--> 1 <--> 2', 0),
(109, 1714194689, 108, 'It is always the last node in the list', 0),
(110, 1714194689, 88, 'Insertion at the end is faster', 0),
(111, 1714195217, 70, 'By using a hash table to track visited nodes', 0),
(112, 1714195217, 47, 'O(n)', 0),
(113, 1714195217, 6, 'NULL pointer', 0),
(114, 1714195217, 55, 'Ease of insertion at the beginning', 0),
(115, 1714195217, 65, 'By sorting the list and removing duplicate values', 0),
(116, 1714195217, 12, 'Nodes are allocated statically', 0),
(117, 1714195217, 75, 'Finding the maximum element', 0),
(118, 1714195217, 61, 'By iterating through the list and using a hash table to track duplicate values', 0),
(119, 1714195217, 38, 'singly linked list', 0),
(120, 1714195217, 3, 'O(1)', 0),
(121, 1714195630, 11, '16 bytes', 0),
(122, 1714195630, 57, 'Insertion at the end', 0),
(123, 1714195630, 51, 'Delete the first element.', 0),
(124, 1714195630, 50, ' Yes, if Y is not the last node.', 0),
(125, 1714195630, 69, 'It optimizes memory allocation for nodes', 0),
(126, 1714195630, 49, 'merge sort', 0),
(127, 1714195630, 19, 'It depends on the size of the list', 0),
(128, 1714195630, 10, 'Insertion at the end', 0),
(129, 1714195630, 41, 'doubly linked list', 0),
(130, 1714195630, 79, 'Pointing to the first node', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mcq`
--

CREATE TABLE `mcq` (
  `mcq_id` int NOT NULL,
  `topic_id` int NOT NULL,
  `question` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `option1` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `option2` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `option3` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `option4` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `correct_answer` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `question_category` enum('memorybased','understanding','fillups','example') COLLATE utf8mb4_general_ci NOT NULL,
  `difficulty_level` enum('easy','medium','hard') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mcq`
--

INSERT INTO `mcq` (`mcq_id`, `topic_id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`, `question_category`, `difficulty_level`) VALUES
(1, 4, 'What is a linked list?', ' A linear data structure', 'A sorting algorithm', 'A type of tree structure', 'A database query language', ' A linear data structure', 'memorybased', 'easy'),
(2, 4, 'Which of the following is true about a singly linked list?', 'Each node has two pointers', 'Traversal can only be done in one direction', ' It requires less memory than a doubly linked list', 'Deletion at the middle requires O(1) time complexity', 'Traversal can only be done in one direction', 'memorybased', 'easy'),
(3, 4, 'What is the time complexity of inserting a node at the beginning of a linked list', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 'O(1)', 'memorybased', 'medium'),
(4, 4, 'Which of the following is not an advantage of a linked list over an array?', 'Dynamic size', 'Ease of insertion/deletion at any position', 'Random access of elements', 'Efficient memory utilization', 'Random access of elements', 'memorybased', 'medium'),
(5, 4, 'What is the purpose of a tail pointer in a linked list? ', ' It points to the previous node ', 'It points to the next node ', 'It points to the last node ', 'It points to the first node ', 'It points to the last node ', 'memorybased', 'easy'),
(6, 4, 'In a circular linked list, how does the last node point to the first node?', 'NULL pointer', 'It points to the previous node ', 'it points to a special marker indicating the end', 'it directly points to first node', 'it directly points to first node', 'understanding', 'medium'),
(7, 4, 'Which type of linked list allows traversal in both directions?', 'singly linked list', 'doubly linked list', 'circular linked list ', 'skip list', 'doubly linked list', 'memorybased', 'easy'),
(8, 4, 'What is a dummy node in a linked list?', 'A node with null pointers', 'A node with data equal to zero', 'A node used as a placeholder', 'A node that is disconnected from the list', 'A node used as a placeholder', 'memorybased', 'medium'),
(9, 4, 'How is memory allocated for nodes in a linked list?', 'Contiguous allocation', 'Stack allocation', 'Heap allocation', 'Global allocation', 'Heap allocation', 'memorybased', 'easy'),
(10, 4, 'Which operation in a linked list has the highest time complexity?', 'Insertion at the beginning', 'Insertion at the end', 'Deletion at the beginning', 'Deletion at the end', 'Deletion at the end', 'understanding', 'hard'),
(11, 4, 'What is the memory overhead for each node in a singly linked list in a 32-bit system?', '4 bytes', '8 bytes', '12 bytes', '16 bytes', '4 bytes', 'memorybased', 'hard'),
(12, 4, 'How does memory allocation for nodes in a linked list differ from arrays?', 'Nodes are allocated contiguously in memory', 'Nodes are allocated on the stack', 'Nodes are allocated dynamically on the heap', 'Nodes are allocated statically', 'Nodes are allocated dynamically on the heap', 'memorybased', 'medium'),
(13, 4, 'What is the significance of the \"next\" pointer in a linked list node?', 'It stores the value of the node', 'It points to the previous node', 'It points to the next node in the sequence', 'It contains metadata about the node', 'It points to the next node in the sequence', 'memorybased', 'easy'),
(14, 4, 'In a doubly linked list, how much additional memory is required per node compared to a singly linked list?', 'Same amount', 'Half amount', 'Twice the amount', 'Three times the amount', 'Twice the amount', 'memorybased', 'medium'),
(15, 4, 'When a node is dynamically allocated for a linked list, what type of memory allocation function is commonly used?', 'malloc()', 'free()', 'realloc()', 'calloc()', 'malloc()', 'memorybased', 'easy'),
(16, 4, 'What is the term for memory leaks that can occur in linked lists?', 'Segmentation fault', 'Memory fragmentation', 'Memory leak', 'Dangling pointer', 'Memory leak', 'memorybased', 'hard'),
(17, 4, 'How does the memory usage of a linked list compare to that of an array when it comes to dynamic resizing?', 'Linked list consumes more memory', 'Array consumes more memory', 'Both consume the same amount of memory', 'It depends on the implementation', '. Linked list consumes more memory', 'understanding', 'medium'),
(18, 4, 'What happens if memory allocation fails during node creation in a linked list?', 'Program crashes', ' Operating system reallocates memory', 'Null pointer is returned', 'Garbage collector intervenes', 'Null pointer is returned', 'understanding', 'easy'),
(19, 4, 'How does memory fragmentation impact the performance of a linked list?', 'It improves performance', 'It degrades performance', 'It has no impact', 'It depends on the size of the list', 'It degrades performance', 'memorybased', 'hard'),
(20, 4, 'What is the role of the memory management system in a linked list?', 'To allocate memory for nodes', 'To deallocate memory for nodes', 'To manage memory leaks', 'All of the above', 'All of the above', 'memorybased', 'medium'),
(21, 4, 'In a singly linked list, how many pointers does each node typically contain?', 'one', 'two', 'three', 'four', 'one', 'memorybased', 'easy'),
(22, 4, 'When a node is deleted from a linked list, what happens to its memory?', 'It is immediately deallocated', 'It becomes inaccessible but remains in memory until garbage collected', 'It remains intact but with no references', 'It is marked for deletion by the operating system', 'It becomes inaccessible but remains in memory until garbage collected', 'understanding', 'medium'),
(23, 4, 'What is the impact of memory fragmentation on linked list operations?', 'It has no impact', 'It may slow down traversal and manipulation operations', 'It improves memory allocation efficiency', 'It reduces memory consumption', 'It may slow down traversal and manipulation operations', 'memorybased', 'hard'),
(24, 4, 'In a circular linked list, how is the end of the list identified?', 'By a null pointer', 'By a special marker indicating the end', 'By the last node pointing to the first node', 'By the last node pointing to null', 'By the last node pointing to the first node', 'memorybased', 'easy'),
(25, 4, 'What is the significance of the \"data\" field in a linked list node?', 'It points to the previous node', 'It contains the value of the node', 'It points to the next node', 'It serves as metadata for memory management', 'It contains the value of the node', 'memorybased', 'easy'),
(26, 4, 'When a new node is inserted into a linked list, how is memory allocated for it?', 'Memory is allocated statically', 'Memory is allocated on the heap using malloc or similar functions', 'Memory is allocated on the stack', 'Memory is allocated on the globally', 'Memory is allocated on the heap using malloc or similar functions', 'memorybased', 'medium'),
(27, 4, 'What is the purpose of a \"dummy\" node in some linked list implementations?', 'To store special metadata', 'To serve as a placeholder for insertion operations', 'To mark the end of the list', 'To improve memory management efficiency', 'To serve as a placeholder for insertion operations', 'memorybased', 'hard'),
(28, 4, 'How does memory management in a linked list differ from that in an array?', 'Linked lists require manual memory management', 'Arrays require manual memory management', 'Both use automatic memory management', 'Neither requires memory management', 'Linked lists require manual memory management', 'memorybased', 'easy'),
(29, 4, 'the number of comparisons needed to search a singly linked list of length n for a given element is_____', 'log(2*n)', 'n/2', 'log(2*n)-1', 'n', 'n', 'fillups', 'medium'),
(30, 4, 'Which of the following information is stored in a doubly-linked list?s nodes?', 'value of node', 'address of the nest node ', 'address of the previous node ', 'All of the above', 'All of the above', 'memorybased', 'easy'),
(31, 4, 'Which of the following are applications of linked lists?', 'implementing file systems', 'chaining in hash tables ', 'binary tree implementation', 'All of the above', 'All of the above', 'memorybased', 'medium'),
(32, 4, 'Insertion of an element at the middle of a linked list requires the modification of how many pointers?', '2', '1', '3', '4', '2', 'understanding', 'easy'),
(33, 4, 'Insertion of an element at the ends of a linked list requires the modification of how many pointers?', '2', '1', '3', '4', '1', 'understanding', 'easy'),
(34, 4, 'Which of the following algorithms is not feasible to implement in a linked list?', 'linear search', 'merge sort', 'insertion sort', 'binary search', 'binary search', 'memorybased', 'medium'),
(35, 4, 'Which of the following can be done with LinkedList?', 'Implementation of Stacks and Queues.', 'Implementation of Binary Trees.', 'Implementation of Data Structures that can simulate Dynamic Arrays.', 'All of the above.', 'All of the above.', 'memorybased', 'easy'),
(36, 4, 'A linked list node can be implemented using?', 'struct', 'class ', 'both a and b', 'none of the above', 'both a and b', 'memorybased', 'easy'),
(37, 4, 'Polynomial addition can be implemented using which of the following structure?', 'Linked List', 'Trees', 'Stacks', 'none of the above', 'trees', 'memorybased', 'medium'),
(38, 4, 'A linked list in which none of the nodes contains a NULL pointer is?', 'singly linked list', 'doubly linked list', 'circular linked list ', 'none of the above', 'circular linked list', 'memorybased', 'medium'),
(39, 4, 'Which of the following sorting algorithms can be applied to linked lists?', 'merge sort', 'Insertion sort', 'quick sort', 'all of the above', 'all of the above', 'memorybased', 'easy'),
(40, 4, 'The type of pointer used to point to the address of the next element in a linked list?', 'pointer to character', 'pointer to integer', 'pointer to node ', 'none of the above', 'pointer to node', 'understanding', 'hard'),
(41, 4, 'Which of the following is optimal to find an element at kth position at the linked list?', 'singly linked list', 'doubly linked list', 'circular linked list ', 'array implementation of linked list', 'array implementation of linked list', 'understanding', 'hard'),
(42, 4, '____is the time complexity of adding 2 numbers as a linked list?', 'O(max(n,m))', 'O(n+m)', 'O(min(n,m))', 'none of the above', 'O(max(n,m))', 'fillups', 'hard'),
(43, 4, 'Rotating a linked list by some places clockwise will take a time complexity of?', 'O(1)', 'O(n)1', 'O(n^2)', 'none of the above', 'O(n)', 'understanding', 'hard'),
(44, 4, 'In a circular linked list insertion of a record requires the modification of?', '1 pointer', '2 pointer', '3 pointer ', '4 pointer', '2 pointer', 'understanding', 'medium'),
(45, 4, 'Rotating a linked list by some places clockwise will take a space complexity of?', 'O(1)', 'O(n)', 'O(n^2)', 'none of the above', 'O(1)', 'understanding', 'hard'),
(46, 4, 'How can we destroy a linked  list pointer in C++?', 'delete keyword', 'free keyword', 'calloc', 'malloc', 'delete keyword', 'memorybased', 'easy'),
(47, 4, 'What is the space complexity for deleting a linked list?', 'O(1)', 'O(n)', 'O(n^2)', 'none of the above', 'O(1)', 'understanding', 'medium'),
(48, 4, 'Which of the following linked list operation takes O(1) time?', 'insert element at start of the linked list', 'insert element at the end of the linked list', 'find length of the linked list', 'none of the above', 'insert element at start of the linked list', 'memorybased', 'medium'),
(49, 4, 'Which algorithms can be used to sort a random linked list with minimum time complexity?', 'insertion sort', 'quick sort', 'heap sort', 'merge sort', 'merge sort', 'memorybased', 'hard'),
(50, 4, 'Pointer to a node Y in a singly linked list. A pointer to the head node is not given if one point is given. Can we delete node Y from the given linked list?', ' Yes, if Y is not the last node.', 'Yes, if the size of the linked list is even.', ' Yes, if the size of the linked list is odd.', ' Yes, if Y is not the first node.?', 'Yes, if Y is not the last node.', 'understanding', 'hard'),
(51, 4, 'Where you given pointers to the first and last nodes of a singly linked list, an Option that depends on the linked list\'s length?', 'Delete the first element.', ' Insert a new element as the first element.', 'Delete the last element.', 'Add element at the end of the list.', 'Delete the last element.', 'understanding', 'hard'),
(52, 4, 'In C++, how do you allocate memory for a new node in a linked list?', 'Using the new keyword', 'Using the malloc keyword', 'Using the delete keyword', 'Using the free() keyword', 'Using the new keyword', 'memorybased', 'easy'),
(53, 4, 'Which operation in a linked list requires traversal through the entire list?', 'Insertion at the beginning', 'Insertion at the end', 'Deletion at the beginning', 'Deletion at the end', 'Deletion at the end', 'understanding', 'medium'),
(54, 4, 'What is the purpose of the head pointer in a linked list?', 'To store the value of the first node', 'To store the value of the last node', 'To point to the previous node', 'To point to the first node', 'To point to the first node', 'memorybased', 'easy'),
(55, 4, 'Which of the following is an advantage of a doubly linked list over a singly linked list', 'Efficient memory usage', 'Ease of insertion at the beginning', 'Ability to traverse in both directions', 'Simplicity of implementation', 'Ability to traverse in both directions', 'memorybased', 'medium'),
(56, 4, 'What is a node in a linked list?', 'A data structure to store multiple values', 'A container to hold pointers', 'A data structure representing an element in the list', 'A reserved memory location', 'A data structure representing an element in the list', 'memorybased', 'easy'),
(57, 4, 'Which operation in a linked list can be performed in constant time (O(1))?', 'Insertion at the beginning', 'Insertion at the end', 'Deletion at the beginning', 'Deletion at the end', 'Insertion at the beginning', 'memorybased', 'hard'),
(58, 4, 'What happens if memory allocation fails during the creation of a new node in a linked list?', 'The program crashes', 'Null pointer is returned', 'Operating system reallocates memory', 'Garbage collector intervenes', 'Null pointer is returned', 'understanding', 'easy'),
(59, 4, 'How can you determine if a linked list contains a cycle in C++?', 'By using the std::find algorithm', 'By using a hash table to store visited nodes', 'By checking for duplicate elements', 'By using the Floyd\'s Tortoise and Hare algorithm', 'By using the Floyd\'s Tortoise and Hare algorithm', 'understanding', 'medium'),
(60, 4, 'What is the purpose of the tail pointer in a linked list?', 'To store the value of the last node', 'To point to the previous node', 'To store the length of the list', 'To point to the next node', 'To store the value of the last node', 'understanding', 'easy'),
(61, 4, 'How do you remove duplicates from an unsorted linked list in C++?', 'Using sorting algorithms like quicksort', 'Using the std::unique algorithm', 'By iterating through the list and using a hash table to track duplicate values', 'By comparing adjacent elements and removing duplicates', 'By iterating through the list and using a hash table to track duplicate values', 'understanding', 'medium'),
(62, 4, 'Which of the following operations on a singly linked list requires traversal from the head to the tail?', 'Insertion at the beginning', 'Insertion at the end', 'Deletion at the beginning', 'Deletion at the end', 'Insertion at the end', 'understanding', 'medium'),
(63, 4, 'How can you reverse a linked list in C++?', 'By using recursion', 'By using iteration', '. By swapping pointers', 'All of the above', 'All of the above', 'memorybased', 'easy'),
(64, 4, 'How does the size of a linked list affect the performance of operations in C++?', 'Larger size improves performance', 'Smaller size improves performance', 'Size has no significant impact on performance', 'It depends on the specific operation', 'It depends on the specific operation', 'understanding', 'medium'),
(65, 4, 'How can you detect and remove loops/cycles in a linked list efficiently in C++?', 'Using two pointers, one moving twice as fast as the other', 'Using recursion', 'Using a stack to track visited nodes', 'By sorting the list and removing duplicate values', 'Using two pointers, one moving twice as fast as the other', 'memorybased', 'medium'),
(66, 4, 'What is the significance of the XOR linked list in C++?', 'It uses bitwise XOR operation for pointer manipulation', 'It allows constant-time insertion and deletion at any position', 'It is a self-balancing binary search tree', 'It supports parallel processing', 'It uses bitwise XOR operation for pointer manipulation', 'memorybased', 'hard'),
(67, 4, 'What is the role of the dummy node in some linked list algorithms in C++?', 'To mark the end of the list', 'To serve as a placeholder for operations', 'To optimize memory allocation', 'To improve performance by reducing pointer manipulation', 'To serve as a placeholder for operations', 'understanding', 'medium'),
(68, 4, 'How do you implement an efficient linked list that supports constant-time insertion, deletion, and search operations in C++?', 'By using a self-balancing binary search tree', 'By using a hash table', 'By using a skip list', 'By using a doubly linked list with additional indexing', 'By using a skip list', 'understanding', 'hard'),
(69, 4, 'What is the significance of the Flyweight pattern in linked list implementations in C++?', 'It reduces memory consumption by sharing common parts of state among multiple objects', 'It optimizes memory allocation for nodes', 'It ensures consistency in concurrent access to the list', 'It improves performance by using multithreading', 'It reduces memory consumption by sharing common parts of state among multiple objects', 'memorybased', 'hard'),
(70, 4, 'How can you efficiently detect and remove duplicates from a sorted linked list in C++?', 'By using a hash table to track visited nodes', 'By using a doubly linked list', 'By comparing adjacent elements and removing duplicates', 'By sorting the list and then removing duplicate values', 'By comparing adjacent elements and removing duplicates', 'understanding', 'medium'),
(71, 4, 'Which of the following is not a type of linked list?', 'Singly linked list', 'doubly linked list', 'circular linked list ', 'quad linked list', 'quad linked list', 'memorybased', 'easy'),
(72, 4, 'In a singly linked list, each node contains a reference/pointer to______', 'Both the previous and next nodes', 'Only the next node', 'Only the previous node', 'none of the above', 'Only the next node', 'fillups', 'easy'),
(73, 4, '____ operation can be performed efficiently in a singly linked list?', 'Finding the middle element', 'Removing the last element', 'Reversing the list', 'Searching for an element by index', 'Finding the middle element', 'fillups', 'medium'),
(74, 4, 'What is a disadvantage of using a singly linked list compared to an array?', 'Dynamic memory allocation', 'Contiguous memory allocation', 'Random access to elements', 'Insertion and deletion at arbitrary positions', 'Random access to elements', 'memorybased', 'medium'),
(75, 4, '______ of the following operations cannot be performed efficiently in a singly linked list?', 'Insertion at the end of the list', 'Deletion of a node with a given value', 'Finding the maximum element', 'Concatenating two lists', 'Finding the maximum element', 'fillups', 'medium'),
(76, 4, 'In C++, when dynamically allocating memory for a new node in a linked list, which operator is used?', '*', '->\'', '&', '::', '*', 'example', 'easy'),
(77, 4, 'After dynamically allocating memory for a new node in a linked list, what should be done to deallocate the memory when the node is no longer needed?', 'Use the delete keyword', 'Use the free function', 'The memory is automatically deallocated', 'Use the remove keyword', 'Use the delete keyword', 'memorybased', 'medium'),
(78, 4, 'When inserting a new node at the beginning of a linked list, what operation is performed to adjust the pointers/references?', 'Updating the next pointer of the new node', 'Updating the next pointer of the previous first node', 'Updating the next pointer of the last node', 'none of the above', 'Updating the next pointer of the new node', 'understanding', 'easy'),
(79, 4, 'In a circular linked list, how are the pointers/references of the last node adjusted to make the list circular?', 'Pointing to nullptr', 'Pointing to the first node', 'Pointing to the previous node', 'none of the above', 'Pointing to the first node', 'understanding', 'hard'),
(80, 4, 'In a doubly linked list, each node contains pointers/references to both the previous and next nodes. What advantage does this provide over a singly linked list?', 'Constant-time access to elements', 'Reduced memory usage', 'Faster insertion and deletion at arbitrary positions', 'Ability to traverse the list in both directions', 'Ability to traverse the list in both directions', 'memorybased', 'medium'),
(81, 4, 'Which of the following statements about circular linked lists is true?', 'Circular linked lists cannot contain loops', 'Circular linked lists do not have a beginning or end', 'Circular linked lists have a fixed size', 'Circular linked lists have no advantage over linear linked lists', 'Circular linked lists do not have a beginning or end', 'memorybased', 'medium'),
(82, 4, 'In a singly linked list, if a node has a pointer/reference to another node that is earlier in the list, what is this node called?', 'Forward node', 'Next node', 'Previous node', 'Backward node', 'previous node', 'memorybased', 'medium'),
(83, 4, 'Which of the following operations is not typically supported by a linked list?', 'Insertion at the beginning', 'Insertion at the end', 'Deletion of the middle element in constant time', 'Traversal from the end to the beginning', 'Deletion of the middle element in constant time', 'memorybased', 'easy'),
(84, 4, 'In a circular linked list, what is the condition to terminate a traversal?', 'When the current node is nullptr', 'When the current node\'s pointer/reference matches the head node\'s pointer/reference', 'When the current node\'s pointer/reference matches the tail node\'s pointer/reference', 'When the current node\'s pointer/reference is nullptr', 'When the current node\'s pointer/reference matches the head node\'s pointer/reference', 'understanding', 'easy'),
(85, 4, 'Which operation in a linked list requires traversing the entire list?', 'Insertion at the beginning', 'Insertion at the end', 'Deletion of a specific node', 'Accessing the last element', 'Deletion of a specific node', 'understanding', 'easy'),
(86, 4, 'What is the significance of the nullptr value in linked lists?', 'It represents the end of the list', 'It represents the beginning of the list', 'It indicates a memory leak', 'It denotes an empty list', 'It represents the end of the list', 'understanding', 'easy'),
(87, 4, 'How can memory leaks occur in a linked list?', 'By allocating memory using malloc instead of new', 'By not deallocating memory for unused nodes', 'By not initializing the head pointer', 'By using a stack-based memory allocation', 'By not deallocating memory for unused nodes', 'understanding', 'easy'),
(88, 4, 'How does the time complexity of inserting an element at the end of a linked list compare to that of inserting an element at the beginning?', 'Insertion at the end is faster', 'Insertion at the beginning is faster', 'Both operations have the same time complexity', 'Time complexity depends on the size of the list', 'Insertion at the end is faster', 'understanding', 'easy'),
(89, 4, '_____ is the role of the tail pointer in a linked list?', 'It points to the last node in the list', 'It points to the first node in the list', 'It indicates the size of the list', 'It is used for bidirectional traversal', 'It points to the last node in the list', 'fillups', 'easy'),
(90, 4, 'Why might a circular linked list be preferred over a linear linked list in certain applications?', 'It allows bidirectional traversal', 'It provides constant-time access to elements', 'It prevents memory fragmentation', 'It simplifies certain algorithms like round-robin scheduling', 'It simplifies certain algorithms like round-robin scheduling', 'understanding', 'easy'),
(91, 4, 'Assume that reference of head of following doubly linked list is passed to above function 1 <--> 2 <--> 3 <--> 4 <--> 5 <-->6. What should be the modified linked list after the function call?', '2 <--> 1 <--> 4 <--> 3 <--> 6 <-->5', '5 <--> 4 <--> 3 <--> 2 <--> 1 <-->6', '6 <--> 5 <--> 4 <--> 3 <--> 2 <--> 1', ' \n6 <--> 5 <--> 4 <--> 3 <--> 1 <--> 2', '6 <--> 5 <--> 4 <--> 3 <--> 2 <--> 1', 'example', 'easy'),
(92, 4, 'What is the output of following function in which start is pointing to the first node of the following linked list 1->2->3->4->5->6 ?', '1 4 6 6 4 1', '1 3 5 1 3 5', '1 2 3 5', '1 3 5 5 3 1', '1 3 5 5 3 1', 'example', 'easy'),
(93, 4, 'Suppose each set is represented as a linked list with elements in arbitrary order. Which of the operations among union, intersection, membership, cardinality will be the slowest?', 'union?', '?membership', 'cardinality', '?union, intersection', '?union, intersection', 'understanding', 'easy'),
(94, 4, 'Which of the following is an application of XOR-linked lists?', 'implementing stacks', 'implementing queues', 'memory-efficient linked list representation', 'Caching data structures', 'memory-efficient linked list representation', 'understanding', 'easy'),
(95, 4, 'Given pointer to a node X in a singly linked list. Only one pointer is given, pointer to head node is not given, can we delete the node X from given linked list?', 'Possible if X is not last node. Use following two steps (a) Copy the data of next of X to X. (b)Update the pointer of node X to the node after the next node. Delete next of X', 'Possible if X is not first node. Use following two steps (a) Copy the data of next of X to X. (b) Delete next of X.', 'Possible if size of linked list is odd', 'Possible if size of linked list is even.', 'Possible if X is not last node. Use following two steps (a) Copy the data of next of X to X. (b)Update the pointer of node X to the node after the next node. Delete next of X', 'understanding', 'easy'),
(96, 4, 'Is it possible to create a doubly linked list using only one pointer with every node.', 'not possible', 'yes,possible by storing XOR of addresses of previous and next nodes', 'Yes, possible by storing XOR of current node and next node', 'Yes, possible by storing XOR of current node and previous node', 'yes,possible by storing XOR of addresses of previous and next nodes', 'understanding', 'easy'),
(97, 4, 'The concatenation of two lists is to be performed in O(1) time. Which of the following implementations of a list should be used?', 'singly linked list', 'doubly linked list', 'circular doubly linked list', 'array implementation of linked list', 'circular doubly linklist', 'understanding', 'easy'),
(98, 4, 'In a doubly linked list, the number of pointers affected for an insertion operation will be', '5', '0', '1', 'none of the above', 'none of the above', 'understanding', 'easy'),
(99, 4, 'Consider an implementation of unsorted single linked list. Suppose it has its representation with a head and a tail pointer (i.e. pointers to the first and last nodes of the linked list). Given the representation, which of the following operation can not be implemented in O(1) time ?', 'Insertion at the front of the linked list', 'Insertion at the end of the linked list', 'Deletion of the front node of the linked list', 'Deletion of the last node of the linked list.', 'Deletion of the last node of the linked list.', 'understanding', 'easy'),
(100, 4, 'Consider a single linked list where F and L are pointers to the first and last elements respectively of the linked list. The time for performing which of the given operations depends on the length of the linked list?F->1->2->3->L', 'Delete the first element of the list', 'Interchange the first two elements of the list', 'Delete the last element of the list', 'Add an element at the end of the list', 'Delete the last element of the list', 'understanding', 'easy'),
(101, 4, 'Which of the following operations is performed more efficiently by doubly linked list than by linear linked list?', 'Deleting a node whose location is given', 'Searching an unsorted list for a given item', 'Inserting a node after the node with a given location', 'Traversing the list to process each node', 'Deleting a node whose location is given', 'understanding', 'easy'),
(102, 4, 'Which of the following operations cannot be performed efficiently on a singly linked list without using additional data structures?', 'Reversing the list', 'Finding the middle element', 'Detecting a cycle', 'Merging two sorted lists', 'Reversing the list', 'understanding', 'easy'),
(103, 4, 'What is the space complexity of a doubly linked list?', 'O(n)', 'O(2n)', 'O(1)', 'O(n^2)', 'O(n)', 'understanding', 'easy'),
(104, 4, 'Which of the following is NOT a possible implementation of a linked list?', 'Using arrays', 'Using static memory allocation', 'Using recursion', 'Using dynamic memory allocation', 'Using arrays', 'understanding', 'easy'),
(105, 4, 'In a sorted doubly linked list, which operation has the highest time complexity?', 'Insertion at the beginning', 'Searching for an element', 'Insertion at the end', 'Deletion of a given element', 'Searching for an element', 'understanding', 'easy'),
(106, 4, 'Which of the following statements is true about a self-adjusting linked list?', 'It automatically adjusts its size based on the number of elements.', 'It rearranges elements to optimize access patterns.', 'It has a fixed number of nodes.', ' It eliminates the need for pointers.', 'It rearranges elements to optimize access patterns.', 'understanding', 'easy'),
(107, 4, 'Which of the following techniques can be used to detect a cycle in a linked list?', 'Floyd?s Cycle Detection Algorithm', 'Depth-First Search (DFS)', 'Breadth-First Search (BFS)', 'All of the above', 'All of the above', 'memorybased', 'easy'),
(108, 4, 'Which of the following statements is true about a sentinel node in a linked list?', 'It contains data like other nodes.', 'It is always the last node in the list', 'It helps in detecting memory leaks.', 'It does not store data and is used as a placeholder.', 'It does not store data and is used as a placeholder.', 'understanding', 'easy'),
(109, 4, 'In a circular linked list, how can you find the length of the list without traversing it?', 'Counting the number of nodes until a NULL pointer is encountered', 'Using a global variable to store the length', 'Storing the length in the first node', 'Maintaining a separate counter variable updated during ', 'Storing the length in the first node', 'understanding', 'easy'),
(110, 4, 'Consider the following Node struct definition for a singly linked list:struct Node {\n    int data;\n    Node* next;\n};', 'Node* newNode = new Node; newnode->data=10;', 'node *newnode=new node(); newnode->data=10 newnode->next=NULL;', 'Node newNode; newnode.data=10; newnode.next=NULL', 'Node* newnode = new Node(); newnode->data=10;newnode->next=NULL;', 'Node* newnode = new Node(); newnode->data=10;newnode->next=NULL;', 'example', 'easy'),
(111, 4, 'In a singly linked list, each node contains ________ and a pointer to the ________ node.', 'data; next', 'pointers; next', 'pointers; previous', 'data; previous', 'data; next', 'fillups', 'easy'),
(112, 4, 'In a doubly linked list, each node contains pointers to both ________ and ________ nodes.', 'previous; next', 'backward; forward', 'front; back', 'next; previous', 'previous; next', 'fillups', 'easy'),
(113, 4, 'The operation of removing the first node from a linked list is called ________.', 'insertion at the beginning', 'deletion at the beginning', 'insertion at the end', 'deletion at the end', 'deletion at the beginning', 'fillups', 'easy'),
(114, 4, 'A circular linked list is a linked list in which the ________ of the last node points back to the ________ node.', 'previous pointer; first', 'next pointer; last', 'next pointer; first', 'previous pointer; last', 'next pointer; first', 'fillups', 'easy'),
(115, 4, 'In a singly linked list, the time complexity of searching for an element is ________', 'O(1)', 'O(n)', 'O(log n)', 'O(n^2)', 'O(n)', 'fillups', 'easy'),
(116, 4, 'A ________ allows traversal in both forward and backward directions.', 'singly linked list', 'doubly linked list', 'circular linked list', 'dynamic ', 'doubly linked list', 'fillups', 'easy'),
(117, 4, 'A ________ linked list is a variation of a linked list where each node contains the XOR of addresses of the ________ and ________ nodes.', 'doubly; previous; next', 'singly; previous; next', 'XOR; previous; next', 'doubly; next; previous', 'XOR; previous; next', 'fillups', 'easy'),
(118, 4, 'A ________ node in a linked list does not contain any data and is used as a placeholder.', 'sentinel', 'placeholder', 'dummy', 'null', 'sentinel', 'fillups', 'easy'),
(119, 4, 'In a circular linked list, the length of the list can be found by storing the length in the ________ node.', 'first', 'last', 'sentinel', 'current', 'first', 'fillups', 'easy'),
(120, 4, 'The time complexity of inserting a node at the end of a singly linked list is ________.', 'O(1)', 'O(n)', 'O(log n)', 'O(n^2)', 'O(n)', 'fillups', 'easy'),
(121, 4, 'The operation of adding a new node at the end of a linked list is called ________.', 'inserting at the beginning', 'deletion at the beginning', 'insertion at the end', 'deletion at the end', 'insertion at the end', 'fillups', 'easy'),
(122, 4, 'The process of reversing a linked list involves changing the ________ pointers of each node.', 'next', 'previous', 'both the next and the previous', 'data; previous', 'next pointer; first', 'fillups', 'easy'),
(123, 4, 'A ________ linked list is a type of linked list where the last node points to the first node.', 'Circular ', 'doubly linked list', 'singly', 'linear', 'circular', 'fillups', 'easy'),
(124, 4, 'In a circular doubly linked list, the ________ of the first node points to the last node.', ' previous pointer', 'next pointer', 'both previous and next pointers', 'data', ' previous pointer', 'fillups', 'easy'),
(125, 4, 'The process of inserting a new node between two existing nodes in a linked list is called ________.', 'split', 'splice', 'merge', 'concatenate', 'splice', 'fillups', 'easy'),
(126, 4, 'The time complexity of deleting a node from the middle of a singly linked list is ________.', 'O(1)', 'O(n)', 'O(log n)', 'O(n^2)', 'O(n)', 'fillups', 'easy'),
(127, 4, 'In a doubly linked list, the process of removing the first node involves updating the ________ pointer of the second node.', 'next', 'previous', 'both next and previous', 'data', 'previous', 'fillups', 'easy'),
(128, 4, 'A ________ node in a linked list is a special node used to mark the end of the list.', 'sentinel', 'placeholder', 'dummy', 'terminator', 'sentinel', 'fillups', 'easy'),
(129, 4, '________ is not the following application of linked list', 'to implement files', 'for seperate chaining in hash tables', 'Random access of elements', 'more than one of the above', 'Random access of elements', 'fillups', 'easy'),
(130, 4, 'A linear collection of data elements where the linear node is given by means of pointer is called______', '?Linked list', '?Node list', 'Primitive list', 'Unordered list', '?Linked list', 'fillups', 'easy'),
(131, 4, 'The concatenation of two lists can be performed in O(1) time. Which of the following variation of the linked list can be used_______', 'singly linked list', 'Circular doubly linked list', 'doubly linked list', 'Array implementation of list', 'Circular doubly linked list', 'fillups', 'easy'),
(132, 4, '______ c code is used to create new node?', 'ptr = (NODE*)malloc(sizeof(NODE));', '?ptr = (NODE*)malloc(NODE);', 'ptr = (NODE*)malloc(sizeof(NODE*));', '?ptr = (NODE)malloc(sizeof(NODE));', 'ptr = (NODE*)malloc(sizeof(NODE));', 'fillups', 'easy'),
(133, 4, '________ differentiates a circular linked list from a normal linked list?', 'You cannot have the ?next? pointer point to null in a circular linked list', '?It is faster to traverse the circular linked list', '?In a circular linked list, each node points to the previous node instead of the next nod', 'Head node is known in circular linked list', 'You cannot have the ?next? pointer point to null in a circular linked list', 'fillups', 'easy'),
(134, 4, '_____ application makes use of a circular linked list?', '?Undo operation in a text editor', 'Recursive function calls', 'Allocating CPU to resources', 'Implement Hash Tables', 'Allocating CPU to resources', 'fillups', 'easy'),
(135, 4, 'The process of removing a specific node from a linked list involves updating the ________ pointers of adjacent nodes.', 'adjacent', 'neighboring', 'preceding', 'succeeding', 'preceding', 'fillups', 'easy'),
(136, 4, 'In a circular linked list, the length of the list can be found by storing the length in the ________ node.', 'primary', 'central', 'sentinel', 'anchor', 'sentinel', 'fillups', 'easy'),
(137, 4, 'The process of removing the first node from a linked list is called ________.', 'deletion at the front', 'deletion at the back', 'insertion at the front', 'insertion at the back', 'deletion at the front', 'fillups', 'easy'),
(138, 4, 'What will be the output of the following C++ code snippet?#include <iostream>\n\nstruct Node {\n    int data;\n    Node* next;\n};\n\nint main() {\n    Node* head = nullptr;\n    head = new Node;\n    head->data = 10;\n    head->next = nullptr;\n    std::cout << head->data << std::endl;\n    return 0;\n}', '10', 'garbage value', 'compliation error', 'segmentation fault', '10', 'example', 'easy'),
(139, 4, 'What does the following C++ code snippet do?Node* reverseList(Node* head) {\n    Node *prev = nullptr, *curr = head, *next = nullptr;\n    while (curr != nullptr) {\n        next = curr->next;\n        curr->next = prev;\n        prev = curr;\n        curr = next;\n    }\n    return prev;\n}', 'Reverses a singly linked list', 'Inserts a node at the end of a linked list', 'Deletes the last node of a linked list', 'Reverses a doubly linked list', 'Reverses a singly linked list', 'example', 'easy'),
(140, 4, 'What will be the output of the following C++ code snippet?#include <iostream>\n\nstruct Node {\n    int data;\n    Node* next;\n};\n\nvoid printList(Node* head) {\n    while (head != nullptr) {\n        std::cout << head->data << \" \";\n        head = head->next;\n    }\n    std::cout << std::endl;\n}\n\nint main() {\n    Node* head = nullptr;\n    head = new Node;\n    head->data = 10;\n    head->next = nullptr;\n    Node* second = new Node;\n    second->data = 20;\n    second->next = nullptr;\n    head->next = second;\n    printList(head);\n    return 0;\n}\n', '10', '20', '10 20', 'compilation error', '10 20', 'example', 'easy'),
(141, 4, 'What does the following C++ code snippet do?void deleteList(Node* head) {\n    Node* temp;\n    while (head != nullptr) {\n        temp = head;\n        head = head->next;\n        delete temp;\n    }\n}', 'Deletes the first node of the linked lis', 'Deletes the last node of the linked list', 'Deletes the entire linked list', 'Deletes the second node of the linked list', 'Deletes the entire linked list', 'example', 'easy'),
(142, 4, 'Node* findMiddle(Node* head) { Node *slow = head, *fast = head; while (fast != nullptr && fast->next != nullptr) { slow = slow->next; fast = fast->next->next; } return slow; }', 'Finds the middle element of a singly linked list', 'Finds the middle element of a doubly linked list', 'Finds the last element of a singly linked list', 'Finds the first element of a singly linked list', 'Finds the middle element of a singly linked list', 'example', 'easy'),
(143, 4, 'What does the following C++ code snippet do?bool detectLoop(Node* head) {\n    Node *slow = head, *fast = head;\n    while (fast != nullptr && fast->next != nullptr) {\n        slow = slow->next;\n        fast = fast->next->next;\n        if (slow == fast) {\n            return true;\n        }\n    }\n    return false;\n}', 'Detects whether there is a loop in the linked lis', 'Deletes the loop in the linked list', 'Reverses the linked list', 'Finds the middle element of the linked list', 'Detects whether there is a loop in the linked lis', 'example', 'easy'),
(144, 4, 'Node* findNthNodeFromEnd(Node* head, int n) { Node *fast = head, *slow = head; for (int i = 0; i < n; ++i) { if (fast == nullptr) return nullptr; fast = fast->next; } while (fast != nullptr) { slow = slow->next; fast = fast->next; } return slow; }', 'Finds the nth node from the beginning of the linked list', 'Finds the nth node from the end of the linked list', 'Deletes the nth node from the end of the linked list', 'Deletes the nth node from the beginning of the linked list', 'Finds the nth node from the end of the linked list', 'example', 'easy'),
(145, 4, 'What will be the output of the following C++ code snippet?#include <iostream>\n\nstruct Node {\n    int data;\n    Node* next;\n};\n\nvoid printList(Node* head) {\n    while (head != nullptr) {\n        std::cout << head->data << \" \";\n        head = head->next;\n    }\n    std::cout << std::endl;\n}\n\nvoid deleteList(Node* head) {\n    if (head == nullptr) return;\n    deleteList(head->next);\n    delete head;\n}\n\nint main() {\n    Node* head = new Node;\n    head->data = 10;\n    head->next = nullptr;\n    Node* second = new Node;\n    second->data = 20;\n    second->next = nullptr;\n    head->next = second;\n    deleteList(head);\n    printList(head);\n    return 0;\n}', '10 20', 'garbage value', 'empty output', 'segmentation fault', 'segmentation fault', 'example', 'easy'),
(146, 4, 'What does the following C++ code snippet do?Node* mergeLists(Node* list1, Node* list2) {\n    if (list1 == nullptr) return list2;\n    if (list2 == nullptr) return list1;\n    if (list1->data < list2->data) {\n        list1->next = mergeLists(list1->next, list2);\n        return list1;\n    } else {\n        list2->next = mergeLists(list1, list2->next);\n        return list2;\n    }\n}\n', 'Merges two singly linked lists into one', 'Reverses the elements of two singly linked lists', 'Splits a singly linked list into two lists', 'Deletes the common elements from two singly linked lists', 'Merges two singly linked lists into one', 'example', 'easy'),
(147, 4, 'What does the following C++ code snippet do?Node* findIntersection(Node* list1, Node* list2) {\n    Node* head = nullptr;\n    Node* tail = nullptr;\n    while (list1 != nullptr && list2 != nullptr) {\n        if (list1->data == list2->data) {\n            if (head == nullptr) {\n                head = tail = new Node;\n                head->data = list1->data;\n            } else {\n                tail->next = new Node;\n                tail = tail->next;\n                tail->data = list1->data;\n            }\n            list1 = list1->next;\n            list2 = list2->next;\n        } else if (list1->data < list2->data) {\n            list1 = list1->next;\n        } else {\n            list2 = list2->next;\n        }\n    }\n    return head;\n}\n', 'Finds the common elements between two linked lists', 'Reverses the elements of two linked lists', 'Deletes the elements that are common between two linked lists', 'Merges two linked lists into one', 'Finds the common elements between two linked lists', 'example', 'easy'),
(148, 4, 'What will be the output of the following C++ code snippet?#include <iostream>\n\nstruct Node {\n    int data;\n    Node* next;\n};\n\nNode* deleteAlternateNodes(Node* head) {\n    Node* current = head;\n    while (current != nullptr && current->next != nullptr) {\n        Node* temp = current->next;\n        current->next = temp->next;\n        delete temp;\n        current = current->next;\n    }\n    return head;\n}\n\nvoid printList(Node* head) {\n    while (head != nullptr) {\n        std::cout << head->data << \" \";\n        head = head->next;\n    }\n    std::cout << std::endl;\n}\n\nint main() {\n    Node* head = new Node;\n    head->data = 10;\n    head->next = new Node;\n    head->next->data = 20;\n    head->next->next = new Node;\n    head->next->next->data = 30;\n    head->next->next->next = nullptr;\n    head = deleteAlternateNodes(head);\n    printList(head);\n    return 0;\n}\n', '10 30', '20', '10 20 30', 'complilation error', '10 20 30', 'example', 'easy'),
(149, 4, 'What does the following C++ code snippet do?Node* reverseKGroup(Node* head, int k) {\n    Node* current = head;\n    Node* next = nullptr;\n    Node* prev = nullptr;\n    int count = 0;\n\n    while (current != nullptr && count < k) {\n        next = current->next;\n        current->next = prev;\n        prev = current;\n        current = next;\n        count++;\n    }\n\n    if (next != nullptr) {\n        head->next = reverseKGroup(next, k);\n    }\n\n    return prev;\n}\n', 'Reverses every K nodes in a linked list', 'Deletes every K nodes in a linked list', 'Inserts every K nodes in a linked li', 'Reverses the entire linked list', 'Reverses every K nodes in a linked list', 'example', 'easy'),
(150, 4, 'What does the following C++ code snippet do?Node* deleteDuplicates(Node* head) {\n    Node* current = head;\n    while (current != nullptr && current->next != nullptr) {\n        if (current->data == current->next->data) {\n            Node* temp = current->next;\n            current->next = current->next->next;\n            delete temp;\n        } else {\n            current = current->next;\n        }\n    }\n    return head;\n}\n', 'Deletes all nodes with duplicate values in the linked list', 'Deletes the last occurrence of each value in the linked list', 'Deletes the first occurrence of each value in the linked list', 'Deletes all nodes except the first occurrence of each value in the linked list', 'Deletes all nodes with duplicate values in the linked list', 'example', 'easy');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `result_id` int NOT NULL,
  `user_id` int NOT NULL,
  `exam_id` int NOT NULL,
  `total_marks` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`result_id`, `user_id`, `exam_id`, `total_marks`) VALUES
(4, 8, 1714194577, 5),
(5, 8, 1714194689, 2),
(6, 8, 1714195217, 3),
(7, 8, 1714195630, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int NOT NULL,
  `subject_name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `course_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `course_id`) VALUES
(1, 'oocp', 1),
(2, 'dbms', 1);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` int NOT NULL,
  `topic_name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `subject_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`topic_id`, `topic_name`, `subject_id`) VALUES
(1, 'array', 1),
(2, 'inheritance', 1),
(4, 'linked list', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `mobileno` text COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `user_category` enum('admin','student','faculty') COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `password` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `passkey` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `passkeyval` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('approved','pending') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `course_id`, `name`, `mobileno`, `email`, `user_category`, `username`, `password`, `passkey`, `passkeyval`, `status`) VALUES
(1, 3, 'Maitry Jhaveri', '9995551114', 'maitry@gmail.com', 'admin', 'maitry_123', '$2y$10$o45ppKm/ndgNuiyceJ36Ke8JsQLI8DFxsY69b.emyX.oxoMsTnZ5O', 'favbook', 'c++', 'approved'),
(2, 1, 'Parin', '8320960851', 'parinmakwana18@gmail.com', 'student', 'parin_210', '$2y$10$qhKwufhopWxgB22hHPxurukmaqVv4Lg2zN0V70P/yXfevXv02M.3q', 'favmovie', 'inception', 'approved'),
(3, 1, 'Lamin', '8949568948', 'lamin@gmail.com', 'student', 'lamin_16', '$2y$10$s2l0wJ89ZoRiPOeFB.fg9ephZrH9eZKMmqjMZM47NdGMxqI4umjSy', 'favbook', 'odogwu', 'approved'),
(4, 1, 'Ishika', '9898487485', 'ishika@gmail.com', 'student', 'ishika_111', '$2y$10$M9kg7AelCVZxsbFkTz4dx.3ghqdMHcSdelAEEbiXOF5ox8XY/YM2i', 'favteacher', 'maitry', 'pending'),
(5, 1, 'Juhi', '8756556655', 'juhirollwala@gmail.com', 'student', 'juhi_20', '$2y$10$9Ue/wxR2NaJgtlXW6VpWduqhAowo10jLR.L/6zM71w7k1i9mutcqa', 'favmovie', 'shinchan', 'pending'),
(6, 1, 'Jay Patel', '9988447755', 'jaypatel@gmail.com', 'faculty', 'jay_patel', '$2y$10$dZM4CRhcuU14ZcR/bBzMMOOi17uklfL.1xdVcDLq7PbL1iKdzU1cW', 'favmovie', 'kya cool hai hum', 'pending'),
(7, 1, 'Maitry Jhaveri', '0999555111', 'maitry@gmail.com', 'faculty', 'maitry_jhaveri', '$2y$10$TEyvJDIyzPmi65cuLYJ6s.oL7v2WpSWL4mX5fagPOyzhstDLbFhyu', 'favteacher', 'animal', 'approved'),
(8, 1, 'Lamin Janka', '3749506748', 'odogwucapalot9@gmail.com', 'student', 'heislamin', '$2y$10$dt1sgdlMBAahwtVZiSCh0uEHopTtcyudfT7i1JnbZZAZp10Q5.cNK', 'favbook', 'Subtle', 'approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`),
  ADD KEY `fk_course` (`course_id`),
  ADD KEY `fk_subject` (`subject_id`),
  ADD KEY `fk_topic` (`topic_id`);

--
-- Indexes for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`exam_mcq_id`),
  ADD KEY `fk_exam_question_mcq` (`mcq_id`);

--
-- Indexes for table `mcq`
--
ALTER TABLE `mcq`
  ADD PRIMARY KEY (`mcq_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `fk_result_user` (`user_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `subject_course_id` (`course_id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1714192989;

--
-- AUTO_INCREMENT for table `exam_question`
--
ALTER TABLE `exam_question`
  MODIFY `exam_mcq_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `mcq`
--
ALTER TABLE `mcq`
  MODIFY `mcq_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `result_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `topic_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `fk_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `fk_subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
  ADD CONSTRAINT `fk_topic` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`);

--
-- Constraints for table `exam_question`
--
ALTER TABLE `exam_question`
  ADD CONSTRAINT `fk_exam_question_mcq` FOREIGN KEY (`mcq_id`) REFERENCES `mcq` (`mcq_id`);

--
-- Constraints for table `mcq`
--
ALTER TABLE `mcq`
  ADD CONSTRAINT `topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`topic_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `fk_result_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
