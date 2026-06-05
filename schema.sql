-- Creating a database for physical media
CREATE DATABASE PhysicalMedia;
USE PhysicalMedia;

-- Create table structure for books
DROP TABLE IF EXISTS `Books`;
CREATE TABLE `Books` (
	`Title` VARCHAR(255) NOT NULL,
    `Author` VARCHAR(255),
    `Genre` VARCHAR(100),
    `Year_Published` INT,
    `ISBN` VARCHAR(20),
    `Status` VARCHAR(50),
    `Rating` VARCHAR(10),
    `Notes` TEXT
);
    
-- Create table structure for dvds
DROP TABLE IF EXISTS `DVDS`;
CREATE TABLE `DVDS` (
	`Title` VARCHAR(255) NOT NULL,
    `Director` VARCHAR(255),
    `Genre` VARCHAR(100),
    `Year_Released` YEAR,
    `Format` VARCHAR(50),
    `Studio` VARCHAR(255),
    `Status` VARCHAR(50),
    `Rating` VARCHAR(10),
    `Notes` TEXT
);
    
-- Create table structure for comics
DROP TABLE IF EXISTS `Comics`;
CREATE TABLE `Comics` (
	`Title` VARCHAR(255) NOT NULL,
    `Issue_Number` VARCHAR(20),
    `Publisher` VARCHAR(255),
    `Writer` VARCHAR(255),
    `Artist` VARCHAR(255),
    `Genre` VARCHAR(100),
    `Year_Published` INT,
    `ARC` VARCHAR(255),
    `Status` VARCHAR(50),
    `Notes` TEXT
);
-- Create table structure for cds
DROP TABLE IF EXISTS `CDS`;
CREATE TABLE `CDS` (
	`Title` VARCHAR(255) NOT NULL,
    `Artist` VARCHAR(100) NOT NULL,
    `Genre` VARCHAR(100),
    `Year_Released` YEAR,
    `Status` VARCHAR(50),
    `Notes` TEXT
);



-- Inserting data into the `Books` table
INSERT INTO `Books`(`Title`,`Author`,`Genre`,`Year_Published`,`ISBN`,`Status`,`Rating`,`Notes`) VALUES
('The Picture of Dorian Gray', 'Oscar Wilde', 'Classic Fiction', 1890, NULL, NULL, NULL, NULL),
('My Year of Rest and Relaxation', 'Ottessa Moshfegh', 'Literary Fiction', 2018, NULL, NULL, NULL, NULL),
('Moby Dick', 'Herman Melville', 'Classic Fiction', 1851, NULL, NULL, NULL, NULL),
('Marked', 'P.C. Cast, Kristin Cast', 'Young Adult Fantasy', 2007, NULL, NULL, NULL, NULL),
('Betrayed', 'P.C. Cast, Kristin Cast', 'Young Adult Fantasy', 2007, NULL, NULL, NULL, NULL),
('Mirror Girls', 'Kelly McWilliams', 'Young Adult Horror', 2022, NULL, NULL, NULL, NULL),
('Northanger Abbey', 'Jane Austen', 'Classic Fiction', 1817, NULL, NULL, NULL, NULL),
('Thunderhead', 'Neal Shusterman', 'Young Adult Science Fiction', 2018, NULL, NULL, NULL, NULL),
('I\'m Glad My Mom Died', 'Jennette McCurdy', 'Memoir', 2022, NULL, NULL, NULL, NULL),
('Atomic Habits', 'James Clear', 'Self Help', 2018, NULL, NULL, NULL, NULL),
('Who Are You Following', 'Sadie Robertson', 'Self Help', 2021, NULL, NULL, NULL, NULL),
('The House of Wolves', 'James Patterson, Mike Lupica', 'Thriller', 2023, NULL, NULL, NULL, NULL),
('Delicious Monsters', 'Liselle Sambury', 'Young Adult Horror', 2023, NULL, NULL, NULL, NULL),
('The Toll', 'Neal Shusterman', 'Young Adult Science Fiction', 2019, NULL, NULL, NULL, NULL),
('The Collected Poems', 'Sylvia Plath', 'Poetry', 1981, NULL, NULL, NULL, NULL),
('Where the Crawdads Sing', 'Delia Owens', 'Mystery', 2018, NULL, NULL, NULL, NULL),
('It Ends With Us', 'Colleen Hoover', 'Romance', 2016, NULL, NULL, NULL, NULL),
('It Starts With Us', 'Colleen Hoover', 'Romance', 2022, NULL, NULL, NULL, NULL),
('Verity', 'Colleen Hoover', 'Thriller', 2018, NULL, NULL, NULL, NULL),
('Kill Joy', 'Holly Jackson', 'Young Adult Mystery', 2021, NULL, NULL, NULL, NULL),
('American Girl', 'Wendy Walker', 'Thriller', 2023, NULL, NULL, NULL, NULL),
('Heart Bones', 'Colleen Hoover', 'Romance', 2020, NULL, NULL, NULL, NULL),
('The Four Books', 'Yan Lianke', 'Literary Fiction', 2010, NULL, NULL, NULL, NULL),
('As Good As Dead', 'Holly Jackson', 'Young Adult Mystery', 2021, NULL, NULL, NULL, NULL),
('Good Girl Bad Blood', 'Holly Jackson', 'Young Adult Mystery', 2020, NULL, NULL, NULL, NULL),
('A Good Girl\'s Guide to Murder', 'Holly Jackson', 'Young Adult Mystery', 2019, NULL, NULL, NULL, NULL);
-- Inserting data into the `DVDS` table
INSERT INTO `DVDS`(`Title`,`Director`,`Genre`,`Year_Released`,`Format`,`Studio`,`Status`,`Rating`,`Notes`) VALUES
('Friends Season 1', 'Various', 'TV - Comedy', 1994, 'DVD', 'Warner Bros.', NULL, 'TV-PG', NULL),
('Maid in Manhattan', 'Wayne Wang', 'Romance', 2002, 'DVD', 'Columbia Pictures', NULL, 'PG-13', NULL),
('He\'s Just Not That Into You', 'Ken Kwapis', 'Romance', 2009, 'DVD', 'New Line Cinema', NULL, 'PG-13', NULL),
('The Walking Dead Season 3', 'Various', 'TV - Horror', 2012, 'DVD', 'AMC', NULL, 'TV-MA', NULL),
('Million Dollar Baby', 'Clint Eastwood', 'Drama', 2004, 'DVD', 'Warner Bros.', NULL, 'PG-13', NULL),
('Bambi II', 'Brian Pimental', 'Animation', 2006, 'DVD', 'Walt Disney', NULL, 'G', NULL),
('Iron Man', 'Jon Favreau', 'Action', 2008, 'DVD', 'Marvel Studios', NULL, 'PG-13', NULL),
('Iron Man 2', 'Jon Favreau', 'Action', 2010, 'DVD', 'Marvel Studios', NULL, 'PG-13', NULL),
('X-Men', 'Bryan Singer', 'Action', 2000, 'DVD', '20th Century Fox', NULL, 'PG-13', NULL);
-- Inserting data into the `Comics` table
INSERT INTO `Comics`(`Title`,`Issue_Number`,`Publisher`,`Writer`,`Artist`,`Genre`,`Year_Published`,`ARC`,`Status`,`Notes`) VALUES
('Titans Hunt', 'Vol. 1', 'DC Comics', 'Dan Abnett', NULL, 'Superhero', 2016, 'Road to Rebirth', NULL, NULL),
('The Flash', 'Vol. 1', 'DC Comics', 'Si Spurrier', NULL, 'Superhero', 2023, 'Strange Attractor', NULL, NULL),
('Batman Superman', 'Issue #1', 'DC Comics', 'Greg Pak', NULL, 'Superhero', 2013, NULL, NULL, NULL),
('Terminator Endgame', 'Issue #1', 'Dark Horse Comics', 'James Robinson', NULL, 'Science Fiction', 1992, 'Endgame', NULL, NULL),
('Wonder Woman', 'Vol. 1', 'DC Comics', 'Brian Azzarello', NULL, 'Superhero', 2012, 'Blood (New 52)', NULL, NULL);
-- Inserting data into the `CDS` table
INSERT INTO `CDS`(`Title`,`Artist`,`Genre`,`Year_Released`,`Status`,`Notes`) VALUES
('', '', NULL, NULL, NULL, NULL);
