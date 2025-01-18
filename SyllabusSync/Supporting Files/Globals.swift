//
//  Globals.swift
//  AdventurePlanner
//
//  Created by Darren Hsu and Osman Balci on 4/20/24.
//  Copyright © 2024 Darren Hsu and Osman Balci. All rights reserved.
//

import Foundation

//-------------------------------
// Global Constants and Variables
//-------------------------------


let segments = [
    InformationSegment(id: "1", description: degreeRequirements),
    InformationSegment(id: "2", description: icsListing),
    InformationSegment(id: "3", description: statListing),
    InformationSegment(id: "4", description: gdimListing),
    InformationSegment(id: "5", description: infListing),
    InformationSegment(id: "6", description: csListing)
]

let fullSegments = [
    InformationSegment(id: "1", description: degreeRequirementsFull),
    InformationSegment(id: "2", description: icsListingFull),
    InformationSegment(id: "3", description: statListingFull),
    InformationSegment(id: "4", description: gdimListingFull),
    InformationSegment(id: "5", description: infListingFull),
    InformationSegment(id: "6", description: csListingFull)
]

let segmentListing = [
    InformationSegment(id: "1", description: icsListing),
    InformationSegment(id: "2", description: statListing),
    InformationSegment(id: "3", description: gdimListing),
    InformationSegment(id: "5", description: csListing)
]

let fullSegmentListing = [
    InformationSegment(id: "1", description: icsListingFull),
    InformationSegment(id: "2", description: statListingFull),
    InformationSegment(id: "3", description: gdimListingFull),
    InformationSegment(id: "5", description: csListingFull)
]

//-----------------------------------------
// Global Alert Title and Message Variables
//-----------------------------------------
var alertTitle = ""
var alertMessage = ""

let degreeRequirements = """
The degree requirements for the Informatics (IN4MATX) degree at the University of California Irvine. Provides a comprehensive outline of required and elective courses for completing the Informatics major. It specifies foundational programming sequences (I&C SCI 31-33 or honors equivalent), intermediate coursework (e.g., Boolean logic, statistics), core Informatics topics (e.g., software engineering, human-computer interaction, and project management), and the capstone Senior Design Project (IN4MATX 191A-191B). Includes guidelines for choosing six upper-division Informatics courses and four electives from other ICS departments, with a cap on independent or honors research credits.
"""

let icsListing = """
The course listing for the Information and Computer Science (I&C SCI) subject. Lists courses emphasizing fundamental and applied computing skills. Topics include programming (Java, Python, and C++), discrete mathematics, computational theory, and computer organization. Specialized offerings explore areas like game development, spreadsheets for problem-solving, the internet and public policy, and human-centered design principles. Advanced courses focus on topics like data structures, operating systems, and system design. Several courses overlap with other fields (e.g., game design or software engineering), highlighting their interdisciplinary nature. Restrictions and prerequisites are noted for enrollment priority. Does not include Degree Requirements.
"""

let statListing = """
The course listing for the Statistics (STAT) subject. Covers introductory to advanced statistical techniques for data analysis, modeling, and inference. Core topics include probability theory, Bayesian analysis, data visualization, regression, and statistical computing. Graduate and advanced courses delve into multivariate methods, survival analysis, time series, and stochastic processes. Practical applications are emphasized, with projects and case studies integrating real-world data. The section also addresses computational tools for statistical programming and survey analysis. Restrictions typically prioritize students in data science and related majors. Does not include Degree Requirements.
"""

let gdimListing = """
The course listing for the Game Design and Interactive Media (GDIM) subject. Focuses on foundational and advanced concepts in game design, programming, and interactive media creation. Early courses introduce game mechanics, level design, and storytelling, while intermediate topics cover visual scripting, data analytics for games, and the societal impacts of gaming. Advanced offerings include multiplayer game development, capstone projects, and games entrepreneurship. Emphasis is placed on hands-on experience, team-based projects, and iterative prototyping. Course prerequisites and restrictions prioritize GDIM and Computer Game Science majors. Does not include Degree Requirements.
"""

let infListing = """
The course listing for the Informatics (IN4MATX) subject. Explores the intersection of technology, design, and societal impact. Key areas include software engineering (design, testing, and implementation), human-computer interaction, ubiquitous computing, and health informatics. Courses integrate theoretical and practical approaches, with significant focus on teamwork, ethical considerations, and the broader social implications of technology. Capstone projects allow students to tackle real-world challenges in software design or health data analytics. This section includes interdisciplinary overlaps with education, public health, and computer science. Does not include Degree Requirements.
"""

let csListing = """
The course listing for the Computer Science (COMPSCI) subject. Details advanced computing topics such as algorithms, machine learning, database systems, and cybersecurity. Courses span foundational areas (e.g., data structures, computational theory) and specialized applications like artificial intelligence, distributed systems, and software security. Hands-on projects and theoretical analysis are combined to prepare students for research and industry roles. Prerequisites and corequisites ensure students build on essential programming and mathematical skills, making this section pivotal for those pursuing expertise in technical computing fields. Does not include Degree Requirements.
"""

let degreeRequirementsFull = """
The degree requirements for the Informatics (IN4MATX) degree 
A. Select one of the following series:
I&C SCI 31
I&C SCI 32
I&C SCI 33
or
I&C SCI H32
I&C SCI H33

B. Complete:
I&C SCI 45J    Programming in Java as a Second Language
IN4MATX 43    Introduction to Software Engineering
I&C SCI 6B    Boolean Logic and Discrete Structures
STATS 7    Basic Statistics or STATS 67    Introduction to Probability and Statistics for Computer Science

A. Informatics Core Requirements:
IN4MATX 113    Requirements Analysis and Engineering
IN4MATX 121    Software Design: Applications
IN4MATX 131    Human Computer Interaction
IN4MATX 151    Project Management
IN4MATX 161    Social Analysis of Computing
IN4MATX 191A- 191B     Senior Design Project and Senior Design Project

B. Select six 4-unit courses from IN4MATX 100-190

C. Select four 4-unit upper-division courses from the School of ICS (COMPSCI, GDIM, IN4MATX, I&C SCI, STATS). At most, two courses (8 units) may be honors research (H198) or an independent study (199).
"""

let icsListingFull = """
Course Listing for the Information and Computer Science (I&C SCI) subject. Courses numbered 200 and above are only for graduate students.
Courses
I&C SCI 3. Computing Technologies and Their Social Impact. 4 Units.

Examines current computing technologies and social implications at the individual, group, and societal level. Issues include privacy, trust, identity, reputation, governance, and malicious behavior, ethics, social justice, and culture and community.

Restriction: I&C SCI 3 may not be taken for credit after IN4MATX 161.



I&C SCI 4. Designing Computing Technology for People. 4 Units.

Introduces students to basic principles of human-centered computing and theories of human behavior that are relevant for the design of technology for people. Specific topics include usability, prototyping, heuristic evaluation, visual design, theory of perception, accessibility.

Restriction: I&C SCI 4 may not be taken for credit after IN4MATX 131.



I&C SCI 5. Global Disruption and Information Technology. 4 Units.

Explores how new forms of information technology may support transition to a sustainable civilization. Topics include design and implementation of IT systems, science of global change, online community building, and “green IT”. Activities involve reading, writing, discussion, and final project.



I&C SCI 6B. Boolean Logic and Discrete Structures. 4 Units.

Relations and their properties; Boolean algebras, formal languages; finite automata.

Prerequisite: High school mathematics through trigonometry.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.



I&C SCI 6D. Discrete Mathematics for Computer Science. 4 Units.

Covers essential tools from discrete mathematics used in computer science with an emphasis on the process of abstracting computational problems and analyzing them mathematically. Topics include mathematical induction, combinatorics, and recurrence relations.

Prerequisite: Recommended: I&C SCI 6B

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment. Computer Engineering majors have second consideration.



I&C SCI 6N. Computational Linear Algebra. 4 Units.

Matrices and linear transformations, systems of linear equations, determinants, linear vector spaces, eigenvalues and eigenvectors, orthogonal matrices, diagonalization, and least squares. Topics taught primarily from an algorithmic perspective, including computational solutions, applications, and numerical error analysis.

Prerequisite: I&C SCI 31 or I&C SCI 32A or AP Computer Science A. AP Computer Science A with a minimum score of 3

Overlaps with MATH 3A.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

(II and V.B ).

I&C SCI 7. Spreadsheets for Problem-Solving. 4 Units.

Features useful tools for building, solving, analyzing, and visualizing computational models in diverse areas. Covered features include data entry and protection; numerical, logical and relational computation; displaying, highlighting, and sorting data; storing, summarizing, and querying databases; and VB scripting.



I&C SCI 9. Introduction to Computation for Scientists and Engineers. 6 Units.

Introduces principles, techniques, and computational tools for quantitative approach to basic problem solving in physics and engineering. Project-based course that actively explores how programing techniques are used for solving STEM real-world problems.

Prerequisite or corequisite: MATH 2A or AP Calculus AB or AP Calculus BC. AP Calculus AB with a minimum score of 4. AP Calculus BC with a minimum score of 3

Same as PHY SCI 9.
Overlaps with PHYSICS 2.

Restriction: Lower-division students only.

(II and (Va or Vb) ).

I&C SCI 10. How Computers Work. 4 Units.

Introduction to digital computer and communication systems. Capabilities and limitations of information technology. Representing information in digital form. Overview of computer organization, internet, operating systems, software. Human-computer interaction and social impact.

Restriction: May not be taken for credit after I&C SCI 31, I&C SCI 32, I&C SCI 32A, I&C SCI 51, I&C SCI 105, or IN4MATX 43.



I&C SCI 11. The Internet and Public Policy. 4 Units.

How the Internet works. Current public policy issues concerning the Internet. Introductory economics. Communications law. Interactions between information technology, economics, and law. Case studies about Internet and communications policy.

Same as ECON 11.

(II or III ).

I&C SCI 20. Invitation to Computing. 4 Units.

Foundational principles of computer science for students with no computing background that are interested in a related career. Big ideas of computing explored, including programming through use of sequential, conditional, iterative logic. Good computational practices, problem solving, and organization discussed.

I&C SCI 31. Introduction to Programming. 4 Units.

Introduction to fundamental concepts and techniques for writing software in a high-level programming language. Covers the syntax and semantics of data types, expressions, exceptions, control structures, input/output, methods, classes, and pragmatics of programming.

Restriction: Computer Science Engineering Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

(II and VB ).

I&C SCI 32. Programming with Software Libraries. 4 Units.

Construction of programs for problems and computing environments more varied than in I&C SCI 31. Using library modules for applications such as graphics, sound, GUI, database, Web, and network programming. Language features beyond those in I&C SCI 31 are introduced as needed.

Prerequisite: I&C SCI 31. I&C SCI 31 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

(II and (VA or VB) ).

I&C SCI H32. Python Programming and Libraries . 4 Units.

Introduces Python syntax and semantics for fundamental programming concepts. Constructing programs for varied problems and environments. Using library modules for applications such as graphics, sound, GUI, database, Web, and network programming. Accelerated course for students with previous programming background.

Prerequisite: AP Computer Science A. AP Computer Science A with a minimum score of 3. Placement via a transfer course in computer programming or equivalent experience may also be accepted upon review.

Restriction: Computer Science Engineering Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

(II and (VA or VB) ).

I&C SCI 33. Intermediate Programming. 4 Units.

Intermediate-level language features and programming concepts for larger, more complex, higher-quality software. Functional programming, name spaces, modules, class protocols, inheritance, iterators, generators, operator overloading, reflection. Analysis of time and space efficiency.

Prerequisite: I&C SCI 32 or CSE 42 or I&C SCI 32A. I&C SCI 32 with a grade of C or better. CSE 42 with a grade of C or better. I&C SCI 32A with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

(II and VB ).

I&C SCI 45C. Programming in C/C++ as a Second Language. 4 Units.

An introduction to the lexical, syntactic, semantic, and pragmatic characteristics of the C/C++ languages for experienced programmers. Emphasis on object-oriented programming, using standard libraries, and programming with manual garbage collection.

Prerequisite: I&C SCI 33 or CSE 43 or EECS 40. I&C SCI 33 with a grade of C or better. CSE 43 with a grade of C or better. EECS 40 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

I&C SCI 45J. Programming in Java as a Second Language. 4 Units.

An introduction to the lexical, syntactic, semantic, and pragmatic characteristics of the Java language for experienced programmers. Emphasis on object-oriented programming, using standard libraries, and programming with automatic garbage collection.

Prerequisite: I&C SCI 33 or CSE 43. I&C SCI 33 with a grade of C or better. CSE 43 with a grade of C or better

Overlaps with I&C SCI 22, I&C SCI 23, CSE 23.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment. I&C SCI 45J may not be taken for credit after I&C SCI 22, I&C SCI 23, or CSE 23.

I&C SCI 46. Data Structure Implementation and Analysis. 4 Units.

Focuses on implementation and mathematical analysis of fundamental data structures and algorithms. Covers storage allocation and memory management techniques.

Prerequisite: I&C SCI 33 and I&C SCI 45C. I&C SCI 33 with a grade of C or better. I&C SCI 45C with a grade of C or better

Restriction: Computer Science Engineering Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.



I&C SCI 51. Introductory Computer Organization. 6 Units.

Multilevel view, design, and operation of computer system components. Machine-level data and instruction representation. Instruction sets and addressing modes. Memory organization. Laboratory work using low-level programming languages.

Prerequisite: I&C SCI 33 and I&C SCI 6B

Restriction: School of Info & Computer Sci students have first consideration for enrollment.



I&C SCI 53. Principles in System Design. 6 Units.

Introduces basic principles of system software: operating systems, compilers, and networking. Exposure to the following topics through theoretical and practical programming experiences: linking and loading, process and memory management, concurrency and synchronization, network communication, programming for performance, etc.

Prerequisite: I&C SCI 46 and I&C SCI 51. I&C SCI 46 with a grade of C or better. I&C SCI 51 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

I&C SCI 60. Games and Society. 4 Units.

The study and critical analysis of computer games as art objects, cultural artifacts, gateways to virtual worlds, educational aids, and tools for persuasion and social change. Emphasis on understanding games in their historical and cultural context.

Same as GDIM 41.

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration.



I&C SCI 61. Game Design Fundamentals. 4 Units.

Explore the fundamentals of game design through the design and play of simple analog game systems. Students explore the principles and usage of game design elements through hands-on projects emphasizing iteration and playtesting in a creative game design community.

Same as GDIM 25.

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration



I&C SCI 62. Game Technologies and Interactive Media. 4 Units.

Technologies for interactive media and game design. Web-based software systems, virtual world platforms, and game engines. Emphasis is on conceptual and architectural aspects of these technologies.

I&C SCI 80. Special Topics in Information and Computer Science. 2-4 Units.

Studies in selected areas of information and computer sciences. Topics addressed vary each quarter.

Prerequisite: Prerequisites vary.

Repeatability: Unlimited as topics vary.

I&C SCI 90. New Students Seminar. 1 Unit.

Introduces students to the Donald Bren School of Information and Computer Sciences. Focuses on advising students making the transition to UCI, community building, and mostly surveying the technical areas within departments in ICS, via talks by faculty on their research.

Grading Option: Pass/no pass only.

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

I&C SCI 139W. Critical Writing on Information Technology. 4 Units.

Study and practice of critical writing and oral communication as it applies to information technology. Each student writes assignments of varying lengths, totaling at least 4,000 words.

Prerequisite: Satisfactory completion of the Lower-Division Writing requirement.

Restriction: Upper-division students only. School of Info & Computer Sci students have first consideration for enrollment.



I&C SCI 161. Game Engine Lab. 4 Units.

The use of an open source game or graphics engine in the design and implementation of a computer game. Principles of game engine design. Students work on teams to design, implement, and evaluate new computer games based on an engine.

Prerequisite: I&C SCI 45C or GDIM 32 or I&C SCI 167

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

I&C SCI 162. Modeling and World Building. 4 Units.

Use of 3D modeling software and related tools to design and create animated, textured models, and expansive virtual worlds incorporating objects, scenes, and venues for activity within game worlds and online environments.

Corequisite: I&C SCI 61 and GDIM 25 may also be taken as corequisites.
Prerequisite: I&C SCI 33 and (I&C SCI 6N or MATH 3A) and (I&C SCI 61 or GDIM 25)

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

I&C SCI 163. Mobile and Ubiquitous Games. 4 Units.

Design and technology of mobile games, including mixed reality gaming, urban games, and locative media. Case studies of significant systems. Uses and limitations of location-based technologies. Infrastructures and their relationships to gameplay and design.

Prerequisite: (I&C SCI 61 or GDIM 25) and (GDIM 31 or I&C SCI 10 or I&C SCI 31 or I&C SCI 32A)

I&C SCI 166. Game Design. 4 Units.

Game design takes into consideration psychology, narrative, platform features and limitations, marketing, computer science capabilities, human-computer interface principles, industry trends, aesthetic judgment, and other factors. Students focus on video game design through lectures, readings, presentations, implementation, and play testing.

Prerequisite: I&C SCI 61 or GDIM 25

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment. School of ICS majors have second consideration for enrollment.

I&C SCI 167. Multiplayer Game Systems. 4 Units.

Foundations and technologies that enable multiuser, networked, and persistent virtual environments. Emphasis on database design and management, network protocols, and concurrency control to accommodate large numbers of simultaneous users.

Prerequisite: I&C SCI 51 or GDIM 31

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Game Science Majors have first consideration for enrollment.

I&C SCI 168. Multiplayer Game Project. 4 Units.

Design and develop a multiplayer game using Unity or similar engine, with a focus on learning to work in a development team, writing design documents, working with platform features and limitations, developing engaging mechanics, playtesting, and post-mortems.

Prerequisite: (GDIM 27 or I&C SCI 166) and (GDIM 33 or I&C SCI 161) and (GDIM 61 or I&C SCI 62). GDIM 27 with a grade of C or better. I&C SCI 166 with a grade of C or better. GDIM 33 with a grade of C or better. I&C SCI 161 with a grade of C or better. GDIM 61 with a grade of C or better. I&C SCI 62 with a grade of C or better

Same as GDIM 161.

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second consideration for enrollment.

I&C SCI 169A. Capstone Game Project I. 4 Units.

Students work in teams to design and implement a unique game or interactive experience. Emphasis on sound, art, and level design, building a community, production values, full utilization of hardware and software platform, and current industry trends.

Prerequisite: GDIM 27 or GDIM 61 or I&C SCI 62 or I&C SCI 166. GDIM 27 with a grade of C or better. GDIM 61 with a grade of C or better. I&C SCI 62 with a grade of C or better. I&C SCI 166 with a grade of C or better

Grading Option: In Progress (Letter Grade with P/NP).

Same as GDIM 167A.

Restriction: Seniors only. Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors given second right of consideration.

I&C SCI 169B. Capstone Game Project II. 4 Units.

Students continue work in teams to design and implement a unique game or interactive experience. Emphasis on sound, art, and level design, building a community, production values, full utilization of hardware and software platform, and current industry trends.

Prerequisite: GDIM 167A or I&C SCI 169A. GDIM 167A with a grade of C or better. I&C SCI 169A with a grade of C or better. In Progress grade for GDIM 167A or I&C SCI 169A also accepted.

Same as GDIM 167B.

Restriction: Seniors only. Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors given second right of consideration.

I&C SCI 192. Industrial or Public Sector Field Study. 2-4 Units.

Students participate in an off-campus, supervised internship for a minimum of 60 hours. Students apply classroom knowledge through internship projects in the private sector or nonprofit agencies.

Grading Option: Pass/no pass only.

Repeatability: May be taken for credit 4 times.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

I&C SCI 193. Tutoring in ICS. 2 Units.

Principles and practice of providing technical assistance to novice learners in information and computer sciences.

Repeatability: May be taken for credit for 18 units.

Restriction: ICS Peer Tutoring Program students only.

I&C SCI H197. Honors Seminar. 1-2 Units.

An overview of computer science and selected recent trends in research. Students attend talks on current faculty research, with opportunities for discussion.

Grading Option: Pass/no pass only.

Repeatability: May be taken for credit for 4 units.

Restriction: Campuswide Honors Collegium students only. Bren School of ICS Honors students only.

I&C SCI 398A. Teaching Assistant Training Seminar. 2 Units.

Theories, methods, and resources for teaching computer science at the university level, particularly by teaching assistants. Classroom presentations, working with individuals, grading, motivating students. Participants will give and critique presentations and may be videotaped while teaching.

Grading Option: Satisfactory/unsatisfactory only.

"""

let statListingFull = """
Course Listing for the Statistics (STAT) subject.
STATS 5. Seminar in Data Science. 1 Unit.

An introduction to the field of Data Science; intended for entering freshman and transfers.

Grading Option: Pass/no pass only.

Restriction: Information Computer Science Majors only.

STATS 6. Introduction to Data Science. 4 Units.

Introduces the full data cycle. Topics include data collection and retrieval, data cleaning, exploratory analysis and visualization, introduction to statistical modeling, inference, and communicating findings. Applications include real data from a wide-range of fields with emphasis on understanding reproducible practices.



STATS 7. Basic Statistics. 4 Units.

Introduces basic inferential statistics including confidence intervals and hypothesis testing on means and proportions, t-distribution, Chi Square, regression and correlation. F-distribution and nonparametric statistics included if time permits.

Overlaps with STATS 8, MGMT 7, SOCECOL 13.

Restriction: STATS 7 may not be taken for credit concurrently with or after STATS 110, STATS 111, STATS 112.



STATS 8. Introduction to Biological Statistics . 4 Units.

Introductory statistical techniques used to collect and analyze experimental and observational data from health sciences and biology. Includes exploration of data, probability and sampling distributions, basic statistical inference for means and proportions, linear regression, and analysis of variance.

Overlaps with SOCECOL 13, MGMT 7, STATS 7.

Restriction: STATS 8 may not be taken for credit concurrently with or after STATS 110, STATS 111, STATS 112.



STATS 67. Introduction to Probability and Statistics for Computer Science. 4 Units.

Introduction to the basic concepts of probability and statistics with discussion of applications to computer science.

Prerequisite: MATH 2B

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment. STATS 67 may not be taken for credit concurrently with or after STATS 120B.



STATS 68. Statistical Computing and Exploratory Data Analysis. 4 Units.

Introduces key concepts in statistical computing. Techniques such as exploratory data analysis, data visualization, simulation, and optimization methods, are presented in the context of data analysis within a statistical computing environment.

Prerequisite: STATS 7 and (I&C SCI 31 or I&C SCI 32A)

STATS 110. Statistical Methods for Data Analysis I. 4 Units.

Introduction to statistical methods for analyzing data from experiments and surveys. Methods covered include two-sample procedures, analysis of variance, simple and multiple linear regression.

Prerequisite: STATS 7 or STATS 8 or AP Statistics or (STATS 120A and STATS 120B and STATS 120C). AP Statistics with a minimum score of 3

Restriction: School of Info & Computer Sci students only.

STATS 111. Statistical Methods for Data Analysis II. 4 Units.

Introduction to statistical methods for analyzing data from surveys or experiments. Emphasizes application and understanding of methods for categorical data including contingency tables, logistic and Poisson regression, loglinear models.

Prerequisite: STATS 110

Concurrent with STATS 202.

STATS 112. Statistical Methods for Data Analysis III. 4 Units.

Introduction to statistical methods for analyzing longitudinal data from experiments and cohort studies. Topics covered include survival methods for censored time-to-event data, linear mixed models, non-linear mixed effects models, and generalized estimating equations.

Prerequisite: STATS 111

Concurrent with STATS 203.

STATS 115. Introduction to Bayesian Data Analysis. 4 Units.

Basic Bayesian concepts and methods with emphasis on data analysis. Prior and posterior probability distributions, modeling, and Markov Chain Monte Carlo techniques are presented in the context of data analysis within a statistical computing environment.

Prerequisite: STATS 120C. Recommended: STATS 110.

STATS 120A. Introduction to Probability and Statistics I. 4 Units.

Introduction to basic principles of probability and statistical inference. Axiomatic definition of probability, random variables, probability distributions, expectation.

Prerequisite: MATH 2A and MATH 2B and (MATH 2D or MATH 4)

Restriction: Data Science Majors have first consideration for enrollment. Quantitative Economics majors have second consideration.

Concurrent with STATS 281A.

STATS 120B. Introduction to Probability and Statistics II. 4 Units.

Introduction to basic principles of probability and statistical inference. Point estimation, interval estimating, and testing hypotheses, Bayesian approaches to inference.

Prerequisite: STATS 120A

Restriction: Data Science Majors have first consideration for enrollment. Quantitative Economics majors have second consideration.

Concurrent with STATS 281B.

STATS 120C. Introduction to Probability and Statistics III. 4 Units.

Introduction to basic principles of probability and statistical inference. Linear regression, analysis or variance, model checking.

Prerequisite: STATS 120B and (MATH 3A or MATH 6G or I&C SCI 6N)

Restriction: Data Science Majors have first consideration for enrollment. Quantitative Economics majors have second consideration.

Concurrent with STATS 281C.

STATS 140. Multivariate Statistical Methods. 4 Units.

Theory and application of multivariate statistical methods. Topics include statistical inference for the multivariate normal model and its extensions to multiple samples and regression, use of statistical packages for data visualization and reduction, discriminant analysis, cluster analysis, and factor analysis.

Prerequisite: STATS 120C and (MATH 3A or I&C SCI 6N)

Concurrent with STATS 240.

STATS 170A. Project in Data Science I. 4 Units.

Problem definition and analysis, data representation, algorithm selection, solution validation, and results presentation. Students do team projects and lectures cover analysis alternatives, project planning, and data analysis issues. First quarter emphasizes approach selection, project planning, and experimental design.

Corequisite: STATS 111
Prerequisite: STATS 68 and IN4MATX 43 and COMPSCI 122A and COMPSCI 178 and I&C SCI 46 and STATS 111

Grading Option: In Progress (Letter Grade with P/NP).

Restriction: Seniors only. Data Science Majors have first consideration for enrollment.

STATS 170B. Project in Data Science II. 4 Units.

Problem definition and analysis, data representation, algorithm selection, solution validation, and results presentation. Students do team projects and lectures cover analysis alternatives, project planning, and data analysis issues. Second quarter emphasizes project execution and analysis, and presentation of results.

Corequisite: STATS 112
Prerequisite: STATS 170A and STATS 112. In Progress  grade for STATS 170A is also accepted.

Restriction: Seniors only. Data Science Majors have first consideration for enrollment.

STATS 199. Individual Study. 2-5 Units.

Individual research or investigations under the direction of an individual faculty member.

Repeatability: May be repeated for credit unlimited times.

STATS 200A. Intermediate Probability and Statistical Theory. 4 Units.

Basics of probability theory, random variables and basic transformations, univariate distributions—discrete and continuous, multivariate distributions.

Prerequisite: STATS 120C. STATS 120C with a grade of B- or better



"""

let gdimListingFull = """
Course Listing for the Game Design and Interactive Media (GDIM) subject.
GDIM 25. Game Design Fundamentals. 4 Units.

Explore the fundamentals of game design through the design and play of simple analog game systems. Students explore the principles and usage of game design elements through hands-on projects emphasizing iteration and playtesting in a creative game design community.

Same as I&C SCI 61.

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration



GDIM 27. Intermediate Game Design. 4 Units.

More advanced study of game design principles and systems design through the study of complex problems and play experiences. Topics include economies, game balancing, level design, prototyping, stat design, playtesting, and design documentation.

Prerequisite: GDIM 25

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second consideration for enrollment.

GDIM 31. Introduction to Programming for Games. 4 Units.

Learn the fundamentals of programming for games through hands-on exercises in programming languages like C#, Processing, Visual Studio, .NET, and the Unity engine. Students build several small game prototypes.

Restriction: Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration.



GDIM 32. Intermediate Programming for Games. 4 Units.

Students advance their skills with game programming, building on existing skills developed in Introduction to Programming for Games. Hands-on projects emphasize general procedural and problem-solving skills, as well as furthering knowledge of C# and the Unity3D/Unreal game engines.

Prerequisite: GDIM 31

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors will have second consideration.



GDIM 33. Coding In Game Engines. 4 Units.

Introduces students to visual scripting tools in game engines in the context of game design, level, design, and experience design. Students gain fluency in one or more visual scripting languages.

Prerequisite: GDIM 31. GDIM 31 with a grade of C or better

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second consideration for enrollment.

GDIM 41. Games and Society. 4 Units.

The study and critical analysis of computer games as art objects, cultural artifacts, gateways to virtual worlds, educational aids, and tools for persuasion and social change. Emphasis on understanding games in their historical and cultural context.

Same as I&C SCI 60.

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration.



GDIM 49. Special Topics in Games and Society. 4 Units.

Studies in selected areas of games and their relationship to society. Topics addressed vary each quarter.

Repeatability: Unlimited as topics vary.

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration.

GDIM 51. Visual Design Fundamentals. 4 Units.

The principles, tools, and techniques of visual design for playable media. How do shape, line, color, composition, typography, and time work together to communicate information, emotion, and meaning in interfaces, game worlds, and stories.

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration.

GDIM 53. Roleplaying and Improvisational Play. 4 Units.

How do practices of performance, role-playing, and improvisation overlap with contemporary practices of game design? Connecting these forms of play to their contemporary uses within role-playing games, virtual worlds, and playable media more broadly.

Restriction: Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration.

GDIM 55. Storytelling for Interactive Media. 4 Units.

The history, theory, and practice of interactive storytelling for games and other interactive media. Starting with the emergence of electronic literature and hypertext narratives, students encounter and experience a compressed history of this emergent form through play, analysis, and design.

Restriction: Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration.

GDIM 61. Introduction to Game Development. 4 Units.

Introduction to the design and development of games. Includes core concepts in software development, team management, leadership, and project management.

Restriction: Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration.

GDIM 127. Professional Studio/Practicum. 4 Units.

Professional skills are essential in today’s competitive job market. Covers interview techniques, resume building, professional networking, personal brand development, online portfolios, and presentation.

Restriction: Seniors only. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration.

GDIM 129. Special Topics: Project in Advanced Game Design. 4 Units.

Studies in selected areas of advanced game design. Topics addressed vary each quarter. Students work alone or in teams to design and implement a unique game or interactive experience.

Prerequisite: GDIM 25. GDIM 25 with a grade of C or better

Repeatability: Unlimited as topics vary.

Restriction: Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second consideration for enrollment.

GDIM 131. Data Analytics for Games and Interactive Media. 4 Units.

Survey of analysis methods for understanding player data, including playtesting, telemetry data collection and analysis, metrics visualization, and its application in development and business.

Restriction: Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second right of consideration.

GDIM 139. Special Topics in Game Programming. 4 Units.

Studies in selected areas of game programming. Topics addressed vary each quarter.

Prerequisite: GDIM 33 or I&C SCI 161

Repeatability: Unlimited as topics vary.

Restriction: Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second consideration for enrollment.

GDIM 149. Special Topics in Interactive Media Design. 4 Units.

Studies in selected areas of games and interactive media and design. Topics addressed vary each quarter.

Repeatability: Unlimited as topics vary.

Restriction: Upper-division students only. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second consideration for enrollment.

GDIM 161. Multiplayer Game Project. 4 Units.

Design and develop a multiplayer game using Unity or similar engine, with a focus on learning to work in a development team, writing design documents, working with platform features and limitations, developing engaging mechanics, playtesting, and post-mortems.

Prerequisite: (GDIM 27 or I&C SCI 166) and (GDIM 33 or I&C SCI 161) and (GDIM 61 or I&C SCI 62). GDIM 27 with a grade of C or better. I&C SCI 166 with a grade of C or better. GDIM 33 with a grade of C or better. I&C SCI 161 with a grade of C or better. GDIM 61 with a grade of C or better. I&C SCI 62 with a grade of C or better

Same as I&C SCI 168.

Restriction: Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors have second consideration for enrollment.

GDIM 163. Solo Game Project. 4 Units.

Students work on their own to design, develop, and playtest a small game from scratch, taking into consideration psychology, narrative, platform features and limitations, marketing, computer science capabilities, human-computer interface principles, industry trends, aesthetic judgment, and other factors.

Prerequisite: GDIM 27 and GDIM 33 and GDIM 51 and GDIM 61. GDIM 27 with a grade of C or better. GDIM 33 with a grade of C or better

Restriction: Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors given second consideration.

GDIM 165. Games Entrepreneurship. 4 Units.

As the audiences for games continue to diversify so have the channels for game publishing and monetization. Explore connections between the business and creative side of games in context like esports, education, indie game development, mobile apps, and AAA studios.

Restriction: Upper-division students only. Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors given second consideration.

GDIM 167A. Capstone Game Project I. 4 Units.

Students work in teams to design and implement a unique game or interactive experience. Emphasis on sound, art, and level design, building a community, production values, full utilization of hardware and software platform, and current industry trends.

Prerequisite: GDIM 27 or GDIM 61 or I&C SCI 62 or I&C SCI 166. GDIM 27 with a grade of C or better. GDIM 61 with a grade of C or better. I&C SCI 62 with a grade of C or better. I&C SCI 166 with a grade of C or better

Grading Option: In Progress (Letter Grade with P/NP).

Same as I&C SCI 169A.

Restriction: Seniors only. Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors given second right of consideration.

GDIM 167B. Capstone Game Project II. 4 Units.

Students continue work in teams to design and implement a unique game or interactive experience. Emphasis on sound, art, and level design, building a community, production values, full utilization of hardware and software platform, and current industry trends.

Prerequisite: GDIM 167A or I&C SCI 169A. GDIM 167A with a grade of C or better. I&C SCI 169A with a grade of C or better. In Progress grade for GDIM 167A or I&C SCI 169A also accepted.

Same as I&C SCI 169B.

Restriction: Seniors only. Computer Game Science Majors have first consideration for enrollment. Game Design and Interactive Media students have first consideration for enrollment. School of ICS majors given second right of consideration.

"""

let infListingFull = """
Course Listing for the Informatics (IN4MATX) subject.
IN4MATX 43. Introduction to Software Engineering. 4 Units.

Concepts, methods, and current practice of software engineering. Large-scale software production, software life cycle models, principles and techniques for each stage of development.

Prerequisite: I&C SCI 32 or I&C SCI 32A

Overlaps with I&C SCI 105.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 80. Special Topics in Informatics. 4 Units.

Designed for informatics instructors to pilot new teaching materials and prototype new class. The format of the class is flexible based on the content to be offered in the future.

Prerequisite: Prerequisites vary.

Grading Option: In Progress (Letter Grade with P/NP).

Repeatability: May be taken for credit 3 times as topics vary.

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

IN4MATX H81. Ethics, Technology, and Design. 4 Units.

Provides a critical framework for how and why biases of many kinds are built into everyday digital tools. Reflections on ethics, technology, and design through case studies drawn from machine learning, CS education, engineering, social media, and criminal justice.

Restriction: Campuswide Honors Collegium students only.



IN4MATX 101. Concepts in Programming Languages I. 4 Units.

In-depth study of several contemporary programming languages stressing variety in data structures, operations, notation, and control. Examination of different programming paradigms, such as logic programming, functional programming and object-oriented programming; implementation strategies, programming environments, and programming style.

Prerequisite: (I&C SCI 51 or CSE 31 or EECS 31) and (I&C SCI 46 or CSE 46). I&C SCI 51 with a grade of C or better. CSE 31 with a grade of C or better. EECS 31 with a grade of C or better. I&C SCI 46 with a grade of C or better. CSE 46 with a grade of C or better

Same as COMPSCI 141.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 102. Concepts of Programming Language II. 4 Units.

In-depth study of major programming paradigms: imperative, functional, declarative, object-oriented, and aspect-oriented. Understanding the role of programming languages in software development and the suitability of languages in context. Domain-specific languages. Designing new languages for better software development support.

Prerequisite: IN4MATX 101 or COMPSCI 141 or CSE 141

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 113. Requirements Analysis and Engineering. 4 Units.

Equips students to develop techniques of software-intensive systems through successful requirements analysis techniques and requirements engineering. Students learn systematic process of developing requirements through cooperative problem analysis, representation, and validation.

Prerequisite: (I&C SCI 33 or CSE 43) and IN4MATX 43. I&C SCI 33 with a grade of C or better. CSE 43 with a grade of C or better. IN4MATX 43 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 115. Software Testing, Analysis, and Quality Assurance. 4 Units.

Preparation for developing high-quality software through successful veriﬁcation and validation techniques. Fundamental principles of software testing, implementing software testing practices, ensuring the thoroughness of testing to gain conﬁdence in the correctness of the software.

Prerequisite: (I&C SCI 45J or I&C SCI 45C or I&C SCI 46 or CSE 46) and IN4MATX 43. I&C SCI 45J with a grade of C or better. I&C SCI 45C with a grade of C or better. I&C SCI 46 with a grade of C or better. CSE 46 with a grade of C or better. IN4MATX 43 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 117. Project in Software System Design. 4 Units.

Specification, design, construction, testing, and documentation of a complete software system. Special emphasis on the need for and use of teamwork, careful planning, and other techniques for working with large systems.

Prerequisite: (IN4MATX 43 and I&C SCI 33) or CSE 43

Restriction: Upper-division students only. School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 121. Software Design: Applications. 4 Units.

Introduction to application design: designing the overall functionality of a software application. Topics include general design theory, software design theory, and software architecture. Includes practice in designing and case studies of existing designs.

Prerequisite: I&C SCI 33 or CSE 43 or GDIM 33. I&C SCI 33 with a grade of C or better. CSE 43 with a grade of C or better. GDIM 33 with a grade of C or better

Restriction: Computer Science Engineering Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

IN4MATX 122. Software Design: Structure and Implementation. 4 Units.

Introduction to implementation design: designing the internals of a software application. Topics include design aesthetics, design implementation, design recovery, design patterns, and component reuse. Includes practice in designing and case studies of existing designs.

Prerequisite: (I&C SCI 45J or I&C SCI 46 or IN4MATX 45) and (IN4MATX 101 or COMPSCI 141 or CSE 141)

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 124. Internet Applications Engineering. 4 Units.

Concepts in Internet applications engineering with emphasis on the Web. Peer-to-Peer and Interoperability. Topics include HTTP and REST, Remote Procedure/Method Calls, Web Services, data representations, content distribution networks, identity management, relevant W3C/IETF standards, and relevant new large-scale computing styles.

Prerequisite: (COMPSCI 132 or EECS 148) and I&C SCI 45J

Same as COMPSCI 137.
Overlaps with COMPSCI 122B.

Restriction: Upper-division students only. School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 125. Computer Game Development. 4 Units.

Introduction to the principles of interactive 2D and 3D computer game development. Concepts in computer graphics, algorithms, software engineering, art and graphics, music and sound, story analysis, and artificial intelligence are presented and are the basis for student work.

Prerequisite: COMPSCI 112 or COMPSCI 171 or IN4MATX 121 or ART 106B or I&C SCI 163 or I&C SCI 166

Same as COMPSCI 113.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 131. Human Computer Interaction. 4 Units.

Basic principles of human-computer interaction . Introduces students to user interface design techniques, design guidelines, and usability testing. Students gain the ability to design and evaluate user interfaces and become familiar with some of the outstanding research problems in HCI.

Prerequisite: I&C SCI 10 or I&C SCI 31 or I&C SCI 32A or CSE 41 or ENGR 10 or ENGRMAE 10 or EECS 10. I&C SCI 10 with a grade of C or better. I&C SCI 31 with a grade of C or better. I&C SCI 32A with a grade of C or better. CSE 41 with a grade of C or better. ENGR 10 with a grade of C or better. ENGRMAE 10 with a grade of C or better. EECS 10 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 132. Project in Human-Computer Interaction Requirements and Evaluation. 4 Units.

Students undertake significant projects in the elicitation and specification of HCI requirements and the thorough evaluation of user interfaces.

Prerequisite: IN4MATX 131

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 133. User Interaction Software. 4 Units.

Introduction to human-computer interaction programming. Emphasis on current tools, standards, methodologies for implementing effective interaction designs. Widget toolkits, Web interface programming, geo-spatial and map interfaces, mobile phone interfaces.

Prerequisite: I&C SCI 45J or I&C SCI 45C. I&C SCI 45J with a grade of C or better. I&C SCI 45C with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 134. Project in User Interaction Software. 4 Units.

Students complete an end-to-end user interface programming project based on an iterative design paradigm. Topics may include requirements brainstorming, paper prototyping, iterative development, cognitive walk-through, quantitative evaluation, and acceptance testing. Materials fee.

Prerequisite: IN4MATX 131 and IN4MATX 133

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

IN4MATX 141. Information Retrieval. 4 Units.

An introduction to information retrieval including indexing, retrieval, classifying, and clustering text and multimedia documents.

Prerequisite: (I&C SCI 45C or I&C SCI 45J) and (STATS 7 or STATS 67). I&C SCI 45C with a grade of C or better. I&C SCI 45J with a grade of C or better

Same as COMPSCI 121.

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

IN4MATX 143. Information Visualization. 4 Units.

Introduction to interactive visual interfaces for large datasets, and to principles of human visual perception and human computer interaction that inform their design. Various applications for data analysis and monitoring are discussed.

Prerequisite: (IN4MATX 131 or IN4MATX 43) and (I&C SCI 31 or I&C SCI 32A or CSE 41). IN4MATX 131 with a grade of C or better. IN4MATX 43 with a grade of C or better. I&C SCI 31 with a grade of C or better. I&C SCI 32A with a grade of C or better. CSE 41 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

IN4MATX 148. Project in Ubiquitous Computing. 4 Units.

Introduction to ubiquitous computing research methods, tools, and techniques. Prototyping, design, and evaluation of physical computing applications, smart environments, embedded systems, and future computing scenarios. Includes hands-on in-class laboratory exercises. Materials fee.

Prerequisite: I&C SCI 10 or I&C SCI 31 or CSE 41 or I&C SCI 32A. I&C SCI 10 with a grade of C or better. I&C SCI 31 with a grade of C or better. CSE 41 with a grade of C or better. I&C SCI 32A with a grade of C or better

Restriction: Upper-division students only. School of Info & Computer Sci students have first consideration for enrollment.

IN4MATX 151. Project Management. 4 Units.

Introduces theoretical and practical aspects of project management. Topics include organizational theory, group behavior, project management skills, case studies, personal and group productivity tools, management of distributed work, stakeholders, consultants, and knowledge management. Students do a project exercise.

Prerequisite: IN4MATX 43 or GDIM 61

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

IN4MATX 153. Computer Supported Cooperative Work. 4 Units.

Introduces concepts and principles of collaborative systems. Topics may include shared workspaces, group interaction, workflow, architectures, interaction between social and technical features of group work, and examples of collaborative systems used in real-world settings. Students develop a simple collaborative application.

Prerequisite: (IN4MATX 161 or IN4MATX 43) and (I&C SCI 31 or I&C SCI 32A or CSE 41). I&C SCI 31 with a grade of C or better. I&C SCI 32A with a grade of C or better. CSE 41 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

IN4MATX 161. Social Analysis of Computing. 4 Units.

Introduction of computing as a social process. Examines the social opportunities and problems raised by new information technologies, and the consequences of different ways of organizing. Topics include computing and work life, privacy, virtual communities, productivity paradox, systems risks.

Prerequisite: I&C SCI 10 or I&C SCI 31 or I&C SCI 32A or CSE 41 or ENGR 10 or EECS 10 or ENGRMAE 10. I&C SCI 10 with a grade of C or better. I&C SCI 31 with a grade of C or better. I&C SCI 32A with a grade of C or better. CSE 41 with a grade of C or better. ENGR 10 with a grade of C or better. EECS 10 with a grade of C or better. ENGRMAE 10 with a grade of C or better. Satisfactory completion of the Lower-Division Writing requirement.

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

IN4MATX 162W. Organizational Information Systems. 4 Units.

Introduction to role of information systems in organizations, components and structure of organizational information systems, and techniques used in information systems analysis, design, and implementation.

Prerequisite: IN4MATX 161. Satisfactory completion of the Lower-Division Writing requirement.



IN4MATX 163. Project in the Social and Organizational Impacts of Computing . 4 Units.

Students undertake projects intended to gather and analyze data from situations in which computers are used, organize and conduct experiments intended to test hypotheses about impacts, and explore the application of concepts learned in previous courses.

Prerequisite: IN4MATX 162W

IN4MATX 164. Children's Learning and Media. 4 Units.

Examines how popular media may impact how young people learn, develop, and communicate by looking at research related to the impacts of a wide range of popular media including television, video games, digital environments, mobile devices, and other multimedia.

Same as EDUC 130.

Restriction: Education Sciences Majors only. Informatics Majors only. Informatics Minors only.

IN4MATX 171. Introduction to Health Informatics. 4 Units.

Broad overview of medical informatics for students with varied backgrounds. Electronic medical records, online resources, mobile technologies, patient safety, and computational design. Legal, ethical, and public policy issues. Health systems management. Evaluation and fieldwork for health systems.

Prerequisite: WRITING 60 or WRITING 30 or WRITING 31 or HUMAN 1C or HUMAN H1C. WRITING 60 with a grade of C or better. WRITING 30 with a grade of C or better. WRITING 31 with a grade of C or better. HUMAN 1C with a grade of C or better. HUMAN H1C with a grade of C or better

Same as PUBHLTH 105.

Restriction: Upper-division students only. Satisfactory completion of the Lower-Division Writing requirement.

IN4MATX 172. Project in Health Informatics. 4 Units.

Students undertake significant quarter-long projects related to health informatics. Topics may include field evaluations of health care technologies, prototypes, iterative design, and system implementations.

Prerequisite: PUBHLTH 105 or IN4MATX 171

Same as PUBHLTH 106.

IN4MATX 173. Consumer Health Informatics. 4 Units.

Consumer health informatics is a subfield of health informatics aimed to empower healthcare consumers through a variety of consumer-facing technologies. Covers health behavior change, health literacy, social support, and the design, evaluation, and implementation of major technological applications.

Prerequisite: IN4MATX 171 or PUBHLTH 105. IN4MATX 171 with a grade of C or better. PUBHLTH 105 with a grade of C or better

Repeatability: May be taken for credit 3 times.

Same as PUBHLTH 109.

Restriction: Health Informatics Minors have first consideration for enrollment. Public Health Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

IN4MATX 174. Health Data Analytics. 4 Units.

The increasing availability of electronic heath data provides an unprecedented opportunity to use data-driven approaches to improve human health. Equips students with essential skills in curating, managing, and analyzing health data, focusing on electronic health records.

Prerequisite: IN4MATX 171 or PUBHLTH 105. IN4MATX 171 with a grade of C or better. PUBHLTH 105 with a grade of C or better

Same as PUBHLTH 110.

Restriction: Public Health Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

IN4MATX 190. Special Topics in Informatics. 4 Units.

Studies in selected areas of informatics. Topics addressed vary each quarter.

Prerequisite: Prerequisites vary.

Repeatability: Unlimited as topics vary.

IN4MATX 191A. Senior Design Project. 4 Units.

Group supervised project in which students analyze, specify, design, construct, evaluate, and adapt a significant information processing system. Topics include team management, professional ethics, and systems analysis.

Prerequisite: IN4MATX 113 and IN4MATX 121 and IN4MATX 131 and IN4MATX 151

Grading Option: In Progress (Letter Grade with P/NP).

Restriction: Seniors only. Software Engineering Majors have first consideration for enrollment. Informatics Majors have first consideration for enrollment.

IN4MATX 191B. Senior Design Project. 4 Units.

Group supervised project in which students analyze, specify, design, construct, evaluate, and adapt a significant information processing system. Topics include team management, professional ethics, and systems analysis.

Prerequisite: IN4MATX 191A. In Progress  grade for IN4MATX 191A is also accepted.

Restriction: Seniors only.

IN4MATX H198. Honors Research. 4 Units.

Directed independent research in Informatics for honors students.

Prerequisite: Satisfactory completion of the Lower-Division Writing requirement.

Repeatability: May be repeated for credit unlimited times.

Restriction: Bren School of ICS Honors students only. Campuswide Honors Collegium students only.

IN4MATX 199. Individual Study. 2-5 Units.

Individual research or investigation under the direction of an individual faculty member.

Repeatability: May be repeated for credit unlimited times.

"""

let csListingFull = """
Course Listing for the Computer Science (COMPSCI) subject.
COMPSCI 103. Advanced Programming and Problem Solving with C++. 4 Units.

Advanced programming language concepts for more complex, higher performance software design. Builds depth of programming skills in C++ as a foundation for upper-division courses and projects. Focuses on strengthening programming, debugging, and problem solving skills.

Prerequisite: I&C SCI 45C

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 111. Digital Image Processing. 4 Units.

Introduction to the fundamental concepts of digital signal and image processing as applicable in areas such as multimedia, graphics, AI, data mining, databases, vision, or video games. Topics include image representation, space- and frequency-domain transformations, filters, segmentation, and compression.

Prerequisite: (I&C SCI 46 or CSE 46) and I&C SCI 6D and (MATH 3A or I&C SCI 6N). I&C SCI 46 with a grade of C or better. CSE 46 with a grade of C or better. I&C SCI 6D with a grade of C or better. MATH 3A with a grade of C or better. I&C SCI 6N with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 112. Computer Graphics. 4 Units.

Introduction to the fundamental principles of 3D computer graphics including polygonal modeling, geometric transformations, visibility algorithms, illumination models, texturing, and rasterization. Use of an independently-learned 3D graphics API to implement these techniques.

Prerequisite: I&C SCI 46 and (MATH 3A or I&C SCI 6N). I&C SCI 46 with a grade of C or better. MATH 3A with a grade of C or better. I&C SCI 6N with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 113. Computer Game Development. 4 Units.

Introduction to the principles of interactive 2D and 3D computer game development. Concepts in computer graphics, algorithms, software engineering, art and graphics, music and sound, story analysis, and artificial intelligence are presented and are the basis for student work.

Prerequisite: COMPSCI 112 or COMPSCI 171 or IN4MATX 121 or ART 106B or I&C SCI 163 or I&C SCI 166

Same as IN4MATX 125.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 114. Projects in Advanced 3D Computer Graphics. 4 Units.

Projects in advanced 3D graphics such as illumination, geometric modeling, visualization, and animation. Topics include physically based and global illumination, solid modeling, curved surfaces, multiresolution modeling, image-based rendering, basic concepts of animation, and scientific visualization.

Prerequisite: COMPSCI 112 and (I&C SCI 45C or CSE 45C). I&C SCI 45C with a grade of C or better. CSE 45C with a grade of C or better. Recommended: COMPSCI 161 or CSE 161 or COMPSCI 164 or COMPSCI 165.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 115. Computer Simulation. 4 Units.

Discrete event-driven simulation; continuous system simulation; basic probability as pertaining to input distributions and output analysis; stochastic and deterministic simulation; static and dynamic system simulation.

Prerequisite: I&C SCI 6B and (I&C SCI 6N or MATH 3A) and (STATS 67 or STATS 7) and STATS 120A and I&C SCI 51 and IN4MATX 43. I&C SCI 6B with a grade of C or better. I&C SCI 6N with a grade of C or better. MATH 3A with a grade of C or better. STATS 67 with a grade of C or better. STATS 7 with a grade of C or better. STATS 120A with a grade of C or better. I&C SCI 51 with a grade of C or better. IN4MATX 43 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 116. Computational Photography and Vision. 4 Units.

Introduces the problems of computer vision through the application of computational photography. Specific topics include photo-editing (image warping, compositing, hole filling), panoramic image stitching, and face detection for digital photographs.

Prerequisite: I&C SCI 6D and (MATH 6G or MATH 3A or I&C SCI 6N) and MATH 2B and (I&C SCI 46 or CSE 46). I&C SCI 6D with a grade of C or better. MATH 6G with a grade of C or better. MATH 3A with a grade of C or better. I&C SCI 6N with a grade of C or better. MATH 2B with a grade of C or better. I&C SCI 46 with a grade of C or better. CSE 46 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 117. Project in Computer Vision. 4 Units.

Students undertake construction of a computer vision system. Topics include automatically building 3D models from photographs, searching photo collections, robot navigation, and human motion tracking.

Prerequisite: I&C SCI 6D and (MATH 3A or I&C SCI 6N) and MATH 2B and (I&C SCI 46 or CSE 46) and (COMPSCI 112 or COMPSCI 116 or COMPSCI 171 or COMPSCI 178). I&C SCI 6D with a grade of C or better. MATH 3A with a grade of C or better. I&C SCI 6N with a grade of C or better. MATH 2B with a grade of C or better. I&C SCI 46 with a grade of C or better. CSE 46 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 118. Introduction to Virtual Reality. 4 Units.

Introduces virtual reality systems and software. Topics include computer graphics pipeline, human visual system and perception, head mounted displays, image formation, sensors and tracking, and 3D sound. Students use a popular cross-platform game engine to create VR environments.

Prerequisite: (I&C SCI 6N or MATH 3A) and I&C SCI 33

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 121. Information Retrieval. 4 Units.

An introduction to information retrieval including indexing, retrieval, classifying, and clustering text and multimedia documents.

Prerequisite: (I&C SCI 45C or I&C SCI 45J) and (STATS 7 or STATS 67). I&C SCI 45C with a grade of C or better. I&C SCI 45J with a grade of C or better

Same as IN4MATX 141.

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

COMPSCI 122A. Introduction to Data Management. 4 Units.

Introduction to the design of databases and the use of database management systems  for applications. Topics include entity-relationship modeling for design, relational data model, relational algebra, relational design theory, and Structured Query Language  programming.

Prerequisite: I&C SCI 33 or EECS 114. I&C SCI 33 with a grade of C or better

Same as EECS 116.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 122B. Project in Databases and Web Applications. 4 Units.

Introduces students to advanced database technologies and web applications. Topics include database connectivity , extending databases using stored procedures, database administration, web servers, web programming languages (Java servlets, XML, Ajax, and mobile platforms).

Prerequisite: (COMPSCI 122A or EECS 116) and (I&C SCI 45J or AP Computer Science A). AP Computer Science A with a minimum score of 4

Overlaps with COMPSCI 137, IN4MATX 124.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 122C. Principles of Data Management. 4 Units.

Covers fundamental principles underlying data management systems. Content includes key techniques including storage management, buffer management, record-oriented file system, access methods, query optimization, and query processing.

Prerequisite: COMPSCI 122A and (I&C SCI 53 or COMPSCI 143A)

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

Concurrent with COMPSCI 222.

COMPSCI 122D. Beyond SQL Data Management. 4 Units.

Survey of modern data management and analysis technologies beyond relational  database management. Topics include semistructured data, NoSQL databases, big data analysis, and text search/query engines. Additional topics vary and may include data frames, streaming data, and/or time-series data.

Prerequisite: I&C SCI 46 and (I&C SCI 51 or EECS 31) and (COMPSCI 122A or EECS 116)

Restriction: Computer Science Majors have first consideration for enrollment. Computer Science and Engineering and all School of ICS majors have second right of consideration.

COMPSCI 125. Next Generation Search Systems. 4 Units.

Discusses concepts and techniques related to all aspects of search systems. After considering basic search technology and the state-of-art systems, rapidly developing techniques for multimedia search, local search, event-search, and video-on-demand are explored.

Prerequisite: (I&C SCI 45C or I&C SCI 45J) and (STATS 7 or STATS 67). I&C SCI 45C with a grade of C or better. I&C SCI 45J with a grade of C or better

Restriction: Upper-division students only. Computer Science Engineering Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

COMPSCI 131. Parallel and Distributed Computing. 4 Units.

Parallel and distributed computer systems. Parallel programming models. Common parallel and distributed programming issues. Specific topics include parallel programming, performance models, coordination and synchronization, consistency and replication, transactions, fault tolerance.

Prerequisite: I&C SCI 53 or COMPSCI 143A

Restriction: Computer Science Engineering Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

COMPSCI 132. Computer Networks. 4 Units.

Computer network architectures, protocols, and applications. Internet congestion control, addressing, and routing. Local area networks. Multimedia networking.

Prerequisite: EECS 55 or STATS 67

Same as EECS 148.

Restriction: Computer Engineering Majors have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 133. Advanced Computer Networks. 4 Units.

Fundamental principles in computer networks are applied to obtain practical experience and skills necessary for designing and implementing computer networks, protocols, and network applications. Various network design techniques, simulation techniques, and UNIX network programming are covered.

Prerequisite: COMPSCI 132 or EECS 148

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 134. Computer and Network Security. 4 Units.

Overview of modern computer and networks security, attacks, and countermeasures. Authentication, identification, data secrecy, data integrity, authorization, access control, computer viruses, network security. Also covers secure e-commerce and applications of public key methods, digital certificates, and credentials.

Prerequisite: (COMPSCI 132 or EECS 148) and COMPSCI 161 and I&C SCI 53

Restriction: Computer Science Engineering Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

COMPSCI 137. Internet Applications Engineering. 4 Units.

Concepts in Internet applications engineering with emphasis on the Web. Peer-to-Peer and Interoperability. Topics include HTTP and REST, Remote Procedure/Method Calls, Web Services, data representations, content distribution networks, identity management, relevant W3C/IETF standards, and relevant new large-scale computing styles.

Prerequisite: (COMPSCI 132 or EECS 148) and I&C SCI 45J

Same as IN4MATX 124.
Overlaps with COMPSCI 122B.

Restriction: Upper-division students only. School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 141. Concepts in Programming Languages I. 4 Units.

In-depth study of several contemporary programming languages stressing variety in data structures, operations, notation, and control. Examination of different programming paradigms, such as logic programming, functional programming and object-oriented programming; implementation strategies, programming environments, and programming style.

Prerequisite: (I&C SCI 51 or CSE 31 or EECS 31) and (I&C SCI 46 or CSE 46). I&C SCI 51 with a grade of C or better. CSE 31 with a grade of C or better. EECS 31 with a grade of C or better. I&C SCI 46 with a grade of C or better. CSE 46 with a grade of C or better

Same as IN4MATX 101.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 142A. Compilers and Interpreters. 4 Units.

Introduction to the theory of programming language processors covering lexical analysis, syntax analysis, semantic analysis, intermediate representations, code generation, optimization, interpretation, and run-time support.

Prerequisite: CSE 141 or COMPSCI 141 or IN4MATX 101

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 142B. Language Processor Construction. 4 Units.

Project course which provides working laboratory experience in construction and behavior of compilers and interpreters. Students build actual language processors and perform experiments which reveal their behaviors.

Prerequisite: COMPSCI 142A or CSE 142

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 143A. Principles of Operating Systems. 4 Units.

Principles and concepts of process and resource management, especially as seen in operating systems. Processes, memory management, protection, scheduling, file systems, and I/O systems are covered. Concepts illustrated in the context of several well-known systems.

Prerequisite: (I&C SCI 46 or CSE 46) and (I&C SCI 51 or EECS 31 or CSE 31)

Overlaps with EECS 111.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 143B. Project in Operating System Organization. 4 Units.

Detailed specification and design of critical components of an actual operating system including a memory manager, a process server, and a file/IO subsystem. Hardware/software tradeoffs. Emphasis on logical organization of system and communication.

Prerequisite: COMPSCI 143A

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 145. Embedded Software. 6 Units.

Principles of embedded computing systems: embedded systems architecture, hardware/software components, system software and interfacing, real-time operating systems, hardware/software co-development, and communication issues. Examples of embedded computing in real-world application domains. Simple programming using an embedded systems development environment.

Prerequisite: (CSE 46 or I&C SCI 46) and (I&C SCI 51 or EECS 31 or CSE 31)

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 146. Programming in Multitasking Operating Systems. 4 Units.

User- and systems-level programming of modern Internet-connected, multi-user, multitasking operating systems. Shells, scripting, filters, pipelines, programmability, extensibility, concurrency, inter-process communication. Concrete examples of a modern operating system (such as, but not necessarily, Unix programmed in C) are used.

Prerequisite: (I&C SCI 46 or CSE 46) and I&C SCI 51. I&C SCI 46 with a grade of C or better. CSE 46 with a grade of C or better. I&C SCI 51 with a grade of C or better. Recommended: COMPSCI 143A.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 147. Internet of Things  Software and Systems. 4 Units.

Introduction to the Internet of Things  from a systems and software perspective. IoT ecosystem including sensors, embedded CPUs, networking protocols, software, cloud services, and security and privacy requirements. IoT use cases, system design, and programming project.

Prerequisite: I&C SCI 33 or CSE 43

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 151. Digital Logic Design. 4 Units.

Boolean algebra. Design/analysis of combinational and sequential systems using SSI/MSI/LSI modules. Number systems. Error detecting and correction codes. Arithmetic algorithms. Hardware/ firmware implementation of algorithms.

Prerequisite: (I&C SCI 33 or CSE 43) and I&C SCI 51 and I&C SCI 6B and I&C SCI 6D. I&C SCI 33 with a grade of C or better. CSE 43 with a grade of C or better. I&C SCI 51 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 152. Computer Systems Architecture. 4 Units.

Design of computer elements; ALU, control unit, and arithmetic circuits. Memory hierarchy and organization. Caches. Function unit sharing and pipelining. I/O and interrupt processing. RTL and behavioral modeling using hardware description languages. Microprocessor organization and implementation techniques.

Prerequisite: COMPSCI 151

Overlaps with I&C SCI 160, EECS 112.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 153. Logic Design Laboratory. 4 Units.

Introduction to standard integrated circuits. Construction and debugging techniques. Design of digital systems using LSI and MSI components. Practical use of circuits in a laboratory environment, including implementation of small digital systems such as arithmetic modules, displays, and timers.

Prerequisite: COMPSCI 151

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 154. Computer Design Laboratory. 4 Units.

Underlying primitives of computer instruction sets. Principles of microprogramming. Microprogramming. Microprograms written for one or more systems. Typical microprogramming applications discussed and implemented or simulated.

Prerequisite: COMPSCI 151

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 161. Design and Analysis of Algorithms. 4 Units.

Techniques for efficient algorithm design, including divide-and-conquer and dynamic programming, and time/space analysis. Fast algorithms for problems applicable to networks, computer games, and scientific computing, such as sorting, shortest paths, minimum spanning trees, network flow, and pattern matching.

Prerequisite: (I&C SCI 46 or CSE 46) and I&C SCI 6B and I&C SCI 6D and MATH 2B. I&C SCI 46 with a grade of C or better. CSE 46 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Software Engineering Majors have first consideration for enrollment. Data Science Majors have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment. Computer Science Majors have first consideration for enrollment. Business Information Management, Computer Game Science, and Informatics majors have second right of consideration.

COMPSCI 162. Formal Languages and Automata. 4 Units.

Formal aspects of describing and recognizing languages by grammars and automata. Parsing regular and context-free languages. Ambiguity, nondeterminism. Elements of computability; Turning machines, random access machines, undecidable problems, NP-completeness.

Prerequisite: (I&C SCI 46 or CSE 46) and MATH 2B and I&C SCI 6B and I&C SCI 6D. I&C SCI 46 with a grade of C or better. CSE 46 with a grade of C or better

Same as LSCI 102.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Cognitive Sciences Majors have first consideration for enrollment. Language Science Majors have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 163. Graph Algorithms. 4 Units.

Algorithms for solving fundamental problems in graph theory. Graph representations, graph traversal, network flow, connectivity, graph layout, matching problems.

Prerequisite: COMPSCI 161 or CSE 161

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

Concurrent with COMPSCI 265.

COMPSCI 164. Computational Geometry and Geometric Modeling. 4 Units.

Algorithms and data structures for computational geometry and geometric modeling, with applications to game and graphics programming. Topics: convex hulls, Voronoi diagrams, algorithms for triangulation, motion planning, and data structures for geometric searching and modeling of 2D and 3D objects.

Prerequisite: I&C SCI 46 or CSE 46. I&C SCI 46 with a grade of C or better. CSE 46 with a grade of C or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 165. Project in Algorithms and Data Structures. 4 Units.

Design, implementation, execution, and analysis of algorithms for problems such as sorting, searching, data compression, and data encryption. Time-space-structure trade-offs.

Prerequisite: COMPSCI 161 or CSE 161. Recommended: I&C SCI 45C OR CSE 45C.

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Majors have first consideration for enrollment. Computer Science and Engineering majors and all School of ICS majors have second right of consideration.

COMPSCI 166. Quantum Computation and Information. 4 Units.

Basic models for quantum computation and their foundations in quantum mechanics. Quantum complexity classes and quantum algorithms, including algorithms for factoring and quantum simulation. Introduction to quantum information theory and quantum entanglement.

Prerequisite: (I&C SCI 6N or MATH 3A) and (COMPSCI 161 or PHYSICS 113A). I&C SCI 6N with a grade of C+ or better. MATH 3A with a grade of C+ or better

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

Concurrent with COMPSCI 264.

COMPSCI 167. Introduction to Applied Cryptography. 4 Units.

An introduction to the essential aspects of applied cryptography, as it is used in practice. Topics include classical cryptography, block ciphers, stream ciphers, public-key cryptography, digital signatures, one-way hash functions, basic cryptographic protocols, and digital certificates and credentials.

Prerequisite: COMPSCI 161 or CSE 161

Restriction: Upper-division students only. School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 169. Introduction to Optimization. 4 Units.

A broad introduction to optimization. Unconstrained and constrained optimization. Equality and inequality constraints. Linear and integer programming. Stochastic dynamic programming.

Prerequisite: (I&C SCI 6N or MATH 3A) and (STATS 67 or (STATS 7 and STATS 120A))

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

Concurrent with COMPSCI 268.

COMPSCI 171. Introduction to Artificial Intelligence. 4 Units.

Different means of representing knowledge and uses of representations in heuristic problem solving. Representations considered include predicate logic, semantic nets, procedural representations, natural language grammars, and search trees.

Prerequisite: ((STATS 7 and STATS 120A) or STATS 67) and I&C SCI 46 and MATH 2B

Overlaps with EECS 118.

Restriction: Computer Science Engineering Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

COMPSCI 172B. Neural Networks and Deep Learning . 4 Units.

Neural network and deep learning from multiple perspectives. Theory of parallel distributed processing systems, algorithmic approaches for learning from data in various manners, applications to difficult problems in AI from computer vision, to natural language understanding, to bioinformatics and chemoinformatics.

Prerequisite: (STATS 120A and STATS 120B) or MATH 121A or COMPSCI 178 or COMPSCI 273A

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

Concurrent with COMPSCI 274C.

COMPSCI 172C. Artificial Intelligence Frontiers: Technical, Ethical, and Societal. 4 Units.

Explores the frontiers of artificial intelligence and related technologies with a focus on the underlying ethical, legal, and societal challenges and opportunities they create. Encourages critical thinking about these issues.

Prerequisite: COMPSCI 171 and COMPSCI 172B. Recommended: COMPSCI 178

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

Concurrent with COMPSCI 274D.

COMPSCI 175. Project in Artificial Intelligence. 4 Units.

Construction of a working artificial intelligence system. Evaluation of capabilities of the system including impact of knowledge representation.

Prerequisite: COMPSCI 171 and COMPSCI 178

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 177. Applications of Probability in Computer Science. 4 Units.

Application of probability to real-world problems in computer science. Typical topics include analysis of algorithms and graphs, probabilistic language models, network traffic modeling, data compression, and reliability modeling.

Prerequisite: MATH 2B and STATS 67 and I&C SCI 6B and I&C SCI 6D and (MATH 3A or I&C SCI 6N)

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 178. Machine Learning and Data-Mining. 4 Units.

Introduction to principles of machine learning and data-mining applied to real-world datasets. Typical applications include spam filtering, object recognition, and credit scoring.

Prerequisite: I&C SCI 6B and I&C SCI 6D and (I&C SCI 6N or MATH 3A) and MATH 2B and (STATS 67 or (STATS 7 and STATS 120A))

Overlaps with EECS 125.

Restriction: Computer Science Engineering Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

COMPSCI 179. Algorithms for Probabilistic and Deterministic Graphical Models. 4 Units.

Graphical model techniques dealing with probabilistic and deterministic knowledge representations. Focuses on graphical models such as constraint networks, Bayesian networks, and Markov networks that have become a central paradigm for knowledge representation and reasoning in AI and general computer science.

Prerequisite: COMPSCI 171

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

COMPSCI 180A. Project in Computer Science. 4 Units.

Students to solve a substantial real-world problem with knowledge gained from many areas in computer science. Project has a focus on computer science but can overlap with neighbor disciplines.

Prerequisite: I&C SCI 46

Grading Option: In Progress (Letter Grade with P/NP).

Restriction: Upper-division students only. School of Info & Computer Sci students have first consideration for enrollment.

COMPSCI 180B. Project in Computer Science. 4 Units.

Students to solve a substantial real-world problem with knowledge gained from many areas in computer science. Project has a focus on computer science but can overlap with neighbor disciplines.

Prerequisite: COMPSCI 180A. In Progress  grade for COMPSCI 180A is also accepted.

Restriction: Upper-division students only. School of Info & Computer Sci students have first consideration for enrollment.

COMPSCI 183. Introduction to Computational Biology. 4 Units.

The use of theories and methods based on computer science, mathematics, and physics in molecular biology and biochemistry. Basics in biomolecular modeling. Analysis of sequence and structural data of biomolecules. Analysis of biomolecular functions.

Prerequisite: MATH 2D or MATH 3A or STATS 7 or STATS 8

Same as BME 132, BIO SCI M123.

Concurrent with MOL BIO 223 and BME 232.

COMPSCI 184A. Artificial Intelligence in Biology and Medicine. 4 Units.

Introduction to computational methods in molecular biology, aimed at those interested in learning about this interdisciplinary area. Covers computational approaches to understanding and predicting the structure, function, interactions, and evolution of DNA, RNA, proteins, and related molecules and processes.

Prerequisite: I&C SCI 6N or MATH 3A

Restriction: Upper-division students only. School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

Concurrent with COMPSCI 284A.

COMPSCI 184C. Computational Systems Biology. 4 Units.

Computational inference and modeling of gene regulation networks, signal transduction pathways, and the effects of regulatory networks in cellular processes, development, and disease. Introduction of required mathematical, computational, and data handling tools.

Prerequisite: COMPSCI 184A

Restriction: School of Info & Computer Sci students have first consideration for enrollment. Computer Science Engineering Majors have first consideration for enrollment.

Concurrent with COMPSCI 284C.

COMPSCI 189. Project in Bioinformatics. 4 Units.

Teaches problem definition and analysis, data representation, algorithm design, component integration, solution validation, and testability with teams specifying, designing, building, and testing a solution to a bioinformatics problem. Lectures include engineering values, discussions, and ethical ramifications of biomedical computing issues.

Prerequisite: COMPSCI 184A. COMPSCI 184A with a grade of C or better

Restriction: Computer Science Engineering Majors have first consideration for enrollment. School of Info & Computer Sci students have first consideration for enrollment.

COMPSCI 190. Special Topics in Information and Computer Science. 4 Units.

Studies in selected areas of Information and Computer Science. Topics addressed vary each quarter.

Prerequisite: Prerequisites vary.

Repeatability: Unlimited as topics vary.

Restriction: School of Info & Computer Sci students have first consideration for enrollment.

COMPSCI H198. Honors Research. 4 Units.

Directed independent research in computer science for honors students.

Repeatability: May be repeated for credit unlimited times.

Restriction: Campuswide Honors Collegium students only. Bren School of ICS Honors students only. Upper-division students only.

COMPSCI 199. Individual Study. 2-5 Units.

Individual research or investigation with Computer Science faculty.

Repeatability: May be repeated for credit unlimited times.

"""
