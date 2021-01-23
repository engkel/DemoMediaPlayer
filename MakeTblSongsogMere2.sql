 CREATE TABLE tbl_Songs (
    fld_Artist nchar(40),
    fld_Album nchar(40),
    fld_SongId numeric(18,0) NOT NULL PRIMARY KEY,
    fld_SongName nchar(40),
    fld_Length numeric(18, 2),
	fld_Year numeric(18, 0),
	fld_Path nchar(200)
);
INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Bon Jovi', 'Crush', '1', 'Its my life', '4.27', '2000', 'BonJovi-ItMyLife.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Bryan Adams', 'So Far So Good', '2', 'Please Forgive Me', '6.27', '1993', 'Bryan Adams_Please Forgive Me.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Evanescence', 'Fallen', '3', 'Bring Me To Life', '4.12', '2003', 'Evanescence -BringMeToLife.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Evanescence', 'The Open Door', '4', 'Lithium', '3.48', '2006', 'Evanescence-Lithium.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('George Michael', 'Make It Big', '5', 'Careless Whisper', '5.01', '1984', 'George Michael_Careless Whisper.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Lauryn Hill', 'The Miseducation of Lauryn Hill', '6', 'That Thing', '3.56', '1998', 'LaurynHill-ThatThing.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Linkin Park', 'Hybrid Theory ', '7', 'In The End', '3.38', '2000', 'LinkinPark-InTheEnd.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Mariah Carey', 'The Emancipation of Mimi', '8', 'We Belong Together', '3.24', '2005', 'Mariah Carey_We Belong Together.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Mariah Carey', '1s', '9', 'Fantasy', '4.08', '1998', 'MariahCarey_Fantasy.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Nsync', 'N sync', '10', 'Tearin Up My Heart', '3.27', '1997', 'Nsync-TearinUpMyHeart.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('R. Kelly', 'Space Jam', '11', 'I Believe I Can Fly', '5.25', '1996', 'R. Kelly-IBelieveICanFly.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('The Cranberries', 'No Need To Argue', '12', 'Zombie', '5.15', '1994', 'TheCranberries-Zombie.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Toni Braxton', 'Secrets', '13', 'Un-Break My Heart', '4.32', '1995', 'Toni Braxton_Un-BreakMyHeart.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Whitney Houston', 'So Far So Good', '14', 'I Will Always Love You', '4.43', '1993', 'WhitneyHouston-IWillAlwaysLoveYou.mp3');

INSERT INTO tbl_Songs(fld_Artist, fld_Album, fld_SongId, fld_SongName, fld_Length, fld_Year, fld_Path)
VALUES ('Will Smith', 'So Far So Good', '15', 'Gettin', '3.49', '1993', 'WillSmith-Gettin.mp3');

CREATE TABLE tbl_Playlists (
    fld_Name nchar(40),
	fld_PlaylistId int IDENTITY(1,1) NOT NULL PRIMARY KEY
);

CREATE TABLE tbl_PlaylistContents (
    fld_PlaylistId int FOREIGN KEY REFERENCES tbl_Playlists(fld_PlaylistId),
	fld_SongId numeric(18,0) FOREIGN KEY REFERENCES tbl_Songs(fld_SongId),
	fld_SongPosition numeric(18,0)
);