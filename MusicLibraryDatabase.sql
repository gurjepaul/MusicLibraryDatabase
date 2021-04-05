--
-- File generated with SQLiteStudio v3.2.1 on Fri Mar 5 18:39:40 2021
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: ALBUM
CREATE TABLE ALBUM (
    AlbumID INT CHECK (AlbumID >= 10000 and AlbumID <= 99999), 
    SongCount INT NOT NULL CHECK (SongCount > 0), 
    Name VARCHAR NOT NULL, 
    ArtistID INT CHECK (ArtistID >= 1000 and ArtistID <= 9999) NOT NULL,
    PRIMARY KEY(AlbumID),
    FOREIGN KEY(ArtistID) REFERENCES ARTIST(ArtistID)

    );

INSERT INTO ALBUM (AlbumID, SongCount, Name, ArtistID) VALUES (10000, 3 ,"Scary Hours 2", 6666);
INSERT INTO ALBUM (AlbumID, SongCount, Name, ArtistID) VALUES (20000, 5 ,"Watch the Throne", 4444);
INSERT INTO ALBUM (AlbumID, SongCount, Name, ArtistID) VALUES (30000, 4 ,"Aashiqui 2", 5555);
INSERT INTO ALBUM (AlbumID, SongCount, Name, ArtistID) VALUES (40000, 1 ,"Poco", 7777);
INSERT INTO ALBUM (AlbumID, SongCount, Name, ArtistID) VALUES (50000, 2 ,"Imma Brown Boy", 8888);

-- Table: ARTIST
CREATE TABLE ARTIST (
    Age INT NOT NULL, 
    StageName VARCHAR NOT NULL, 
    RecordLabel VARCHAR, 
    ArtistID INT CHECK (ArtistID >= 1000 and ArtistID <= 9999), 
    Description TEXT, 
    OriginCountry VARCHAR NOT NULL,
    PRIMARY KEY(ArtistID)
    );

INSERT INTO ARTIST (OriginCountry, Description, ArtistID, RecordLabel, StageName, Age ) VALUES ( 'Canada', 'Drake is a rapper from Toronto', 6666, 'OVO', 'Drake', 34 );
INSERT INTO ARTIST (OriginCountry, Description, ArtistID, RecordLabel, StageName, Age ) VALUES ( 'U.S.A', 'Jay-Z is Beyonces husband', 4444, 'Tidal', 'Jay-Z', 50 );
INSERT INTO ARTIST (OriginCountry, Description, ArtistID, RecordLabel, StageName, Age ) VALUES ( 'India', 'Arijit Singh is the second best singer from India', 5555, 'Bollywood', 'Arijit Singh', 43 );
INSERT INTO ARTIST (OriginCountry, Description, ArtistID, RecordLabel, StageName, Age ) VALUES ( 'Mexico', 'Christian is a popular corrido singer from Sinaloa', 7777, 'Lavida Loca', 'Christian Nodal', 22 );
INSERT INTO ARTIST (OriginCountry, Description, ArtistID, RecordLabel, StageName, Age ) VALUES ( 'Indonesia', 'Ani used to work part-time at Mcdonalds', 8888, 'Nike Records', 'Ani', 20 );

-- Table: SONG
CREATE TABLE SONG (
    SongID INT CHECK (SongID >= 100000 and SongID <= 999999), 
    Name VARCHAR NOT NULL, 
    YearReleased INT NOT NULL CHECK (YearReleased >= 1600 and YearReleased <= 2021), 
    RecordLabel VARCHAR, 
    Language VARCHAR NOT NULL, 
    Length TIME NOT NULL, 
    ArtistID INT NOT NULL CHECK (ArtistID >= 1000 and ArtistID <= 9999), 
    AlbumID INT NOT NULL CHECK (AlbumID >= 10000 and AlbumID <= 99999),
    PRIMARY KEY(SongID),
    FOREIGN KEY(ArtistID) REFERENCES ARTIST(ArtistID),
    FOREIGN KEY(AlbumID) REFERENCES ALBUM(AlbumID)
    );

INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 10000, 6666, '00:02:58', 'English', 'OVO', 2021, 'What''s Next', 111111);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 10000, 6666, '00:03:13', 'English', 'OVO', 2021, 'Wants and Needs', 111112);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 10000, 6666, '00:06:23', 'English', 'OVO', 2021, 'Lemon Pepper Freestyle', 111113);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 20000, 4444, '00:02:58', 'English', 'Tidal', 2011, 'Otis', 222222);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 20000, 4444, '00:02:21', 'English', 'Tidal', 2011, 'Gotta Have It', 222223);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 20000, 4444, '00:06:23', 'English', 'Tidal', 2011, 'New Day', 222224);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 20000, 4444, '00:04:26', 'English', 'Tidal', 2011, 'Liftoff', 222225);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 20000, 4444, '00:03:13', 'English', 'Tidal', 2011, 'Who Gon Stop Me', 222226);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 30000, 5555, '00:02:25', 'Hindi', 'Bollywood', 2013, 'Tum Hi Ho', 333333);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 30000, 5555, '00:03:15', 'Hindi', 'Bollywood', 2013, 'Sunn Raha Hai', 333334);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 30000, 5555, '00:04:43', 'Hindi', 'Bollywood', 2013, 'Bhula Dena', 333335);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 30000, 5555, '00:02:55', 'Hindi', 'Bollywood', 2013, 'Meri Aashiqui', 333336);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 40000, 7777, '00:03:45', 'Spanish', 'LavidaLoca', 2020, 'Poco', 100001);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 50000, 8888, '00:03:35', 'English', 'Nike Records', 2020, 'My mom hates me', 100002);
INSERT INTO SONG ( AlbumID, ArtistID, Length, Language, RecordLabel, YearReleased, Name, SongID ) VALUES ( 50000, 8888, '00:05:45', 'Hindi', 'Nike Records', 2020, 'I am the GOAT', 100003);

-- Table: GENRE
CREATE TABLE GENRE (
    GenreID INT CHECK (GenreID > 0 and GenreID < 1000), 
    Name VARCHAR NOT NULL UNIQUE,
    PRIMARY KEY(GenreID)
    );

INSERT INTO GENRE ( Name, GenreID )  VALUES ( 'Rap', 100 );
INSERT INTO GENRE ( Name, GenreID )  VALUES ( 'Hip Hop', 200 );
INSERT INTO GENRE ( Name, GenreID )  VALUES ( 'Country', 300 );
INSERT INTO GENRE ( Name, GenreID )  VALUES ( 'Classical', 400 );
INSERT INTO GENRE ( Name, GenreID )  VALUES ( 'Jazz', 500 );

-- Table: PLAYLIST
CREATE TABLE PLAYLIST (
    PlaylistID INT CHECK (PlaylistID >= 10000 and PlaylistID <= 99999), 
    Name VARCHAR NOT NULL, 
    SongCount INT NOT NULL CHECK (SongCount > 0), 
    Description TEXT, 
    GenreID NOT NULL CHECK (GenreID > 0 and GenreID < 1000),
    PRIMARY KEY(PlaylistID),
    FOREIGN KEY(GenreID) REFERENCES GENRE(GenreID)
    );

INSERT INTO PLAYLIST ( GenreID, Description,  SongCount, Name,  PlaylistID ) VALUES ( 400, 'The best playlist for studying', 3, 'Study Jamz', 10000 );
INSERT INTO PLAYLIST ( GenreID, Description,  SongCount, Name,  PlaylistID ) VALUES ( 100, 'The best beats and rhymes', 4, 'Late Night Hustle', 20000 );
INSERT INTO PLAYLIST ( GenreID, Description,  SongCount, Name,  PlaylistID ) VALUES ( 300, 'For all the Southies out there', 3, 'Tractor In The Ditch', 30000 );

-- Table: PLAYLIST_SONG
CREATE TABLE PLAYLIST_SONG (
    SongID INT CHECK (SongID >= 100000 and SongID <= 999999), 
    PlaylistID INT CHECK (PlaylistID >= 10000 and PlaylistID <= 99999),
    PRIMARY KEY(SongID, PlaylistID),
    FOREIGN KEY(SongID) REFERENCES SONG(SongID),
    FOREIGN KEY(PlaylistID) REFERENCES PLAYLIST(PlaylistID)
    );

INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (10000,111112);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (10000,222223);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (10000,222224);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (10000,333333);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (20000,111112);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (20000,222222);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (20000,222225);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (20000,222226);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (20000,100003);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (30000,111111);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (30000,222226);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (30000,100001);
INSERT INTO PLAYLIST_SONG ( PlaylistID, SongID) VALUES (30000,100002);

-- Table: PODCAST
CREATE TABLE PODCAST (
    PodcastID INT CHECK (PodcastID >= 1000 and PodcastID <= 9999), 
    Name VARCHAR NOT NULL, 
    EpisodeNo INT NOT NULL CHECK (EpisodeNo > 0), 
    Description TEXT, 
    YearReleased INT NOT NULL CHECK (YearReleased > 1600 and YearReleased <= 2021), 
    Length TIME NOT NULL, 
    ArtistID INT NOT NULL CHECK (ArtistID >= 1000 and ArtistID <= 9999),
    PRIMARY KEY(PodcastID),
    FOREIGN KEY(ArtistID) REFERENCES ARTIST(ArtistID)
    );

INSERT INTO PODCAST ( ArtistID, Length, YearReleased, Description, EpisodeNo, Name, PodcastID ) VALUES ( 6666, '01:10:48', 2020, 'Drake talks about his beef with Kanye', 1,  'Life in the 6ix', 1000 );
INSERT INTO PODCAST ( ArtistID, Length, YearReleased, Description, EpisodeNo, Name, PodcastID ) VALUES ( 4444, '00:56:48', 2019, 'Jay-Z tells you how to hide your money from Bill', 2,  'Makin Dolla$', 2000 );
INSERT INTO PODCAST ( ArtistID, Length, YearReleased, Description, EpisodeNo, Name, PodcastID ) VALUES ( 4444, '00:49:38', 2020, 'Jay-Z tells you how to get rich quick', 3,  'Makin Dolla$', 2001 );

-- Table: USER
CREATE TABLE USER (
    UserID INT CHECK (UserID > 10000 and UserID <= 99999), 
    Email VARCHAR NOT NULL CHECK (Email LIKE '%@%'), 
    Name VARCHAR NOT NULL, 
    MembershipPlan VARCHAR NOT NULL CHECK (MembershipPlan IN ('Standard', 'Premium')),
    PRIMARY KEY(UserID)
    );

INSERT INTO USER ( MembershipPlan, Name, Email, UserID ) VALUES ( 'Standard', 'Jay', 'gsbrar@uw.edu', 10001 );
INSERT INTO USER ( MembershipPlan, Name, Email, UserID ) VALUES ( 'Premium', 'Joaquin', 'joacotaco@hotmail.mx', 20000 );
INSERT INTO USER ( MembershipPlan, Name, Email, UserID ) VALUES ( 'Standard', 'Ani', 'mcds@hotmail.com', 30000 );
INSERT INTO USER ( MembershipPlan, Name, Email, UserID ) VALUES ( 'Premium', 'Srikar', 'seahawksguyxo@gmail.com', 40000 );
INSERT INTO USER ( MembershipPlan, Name, Email, UserID ) VALUES ( 'Premium', 'Madhav', 'madhav@uw.edu', 50000 );

-- Table: USER_ARTIST
CREATE TABLE USER_ARTIST (
    ArtistID INT CHECK (ArtistID >= 1000 and ArtistID <= 9999), 
    UserID INT CHECK (UserID > 10000 and UserID <= 99999),
    PRIMARY KEY(ArtistID, UserID),
    FOREIGN KEY(ArtistID) REFERENCES ARTIST(ArtistID),
    FOREIGN KEY(UserID) REFERENCES USER(UserID)
    );

INSERT INTO USER_ARTIST ( UserID, ArtistID ) VALUES ( 10001, 6666 );
INSERT INTO USER_ARTIST ( UserID, ArtistID ) VALUES ( 20000, 5555 );
INSERT INTO USER_ARTIST ( UserID, ArtistID ) VALUES ( 30000, 7777 );
INSERT INTO USER_ARTIST ( UserID, ArtistID ) VALUES ( 40000, 4444 );
INSERT INTO USER_ARTIST ( UserID, ArtistID ) VALUES ( 50000, 8888 );


-- Table: USER_FRIEND
CREATE TABLE USER_FRIEND (
    UserID INT CHECK (UserID > 10000 and UserID <= 99999), 
    FriendUserID INT CHECK (FriendUserID > 10000 and FriendUserID <= 99999),
    PRIMARY KEY(UserID, FriendUserID),
    FOREIGN KEY(UserID) REFERENCES USER(UserID),
    FOREIGN KEY(FriendUserID) REFERENCES USER(UserID)
    );

INSERT INTO USER_FRIEND ( UserID, FriendUserID ) VALUES ( 10001, 20000);
INSERT INTO USER_FRIEND ( UserID, FriendUserID ) VALUES ( 10001, 30000);
INSERT INTO USER_FRIEND ( UserID, FriendUserID ) VALUES ( 30000, 20000);
INSERT INTO USER_FRIEND ( UserID, FriendUserID ) VALUES ( 40000, 50000);
INSERT INTO USER_FRIEND ( UserID, FriendUserID ) VALUES ( 50000, 20000);
INSERT INTO USER_FRIEND ( UserID, FriendUserID ) VALUES ( 30000, 40000);

-- Table: USER_PLAYLIST
CREATE TABLE USER_PLAYLIST (
    PlaylistID INT CHECK (PlaylistID >= 10000 and PlaylistID <= 99999), 
    UserID INT CHECK (UserID > 10000 and UserID <= 99999),
    PRIMARY KEY(PlaylistID, UserID),
    FOREIGN KEY(PlaylistID) REFERENCES PLAYLIST(PlaylistID),
    FOREIGN KEY(UserID) REFERENCES USER(UserID)
    );

INSERT INTO USER_PLAYLIST ( UserID, PlaylistID) VALUES ( 10001 , 10000);
INSERT INTO USER_PLAYLIST ( UserID, PlaylistID) VALUES ( 20000 , 20000);
INSERT INTO USER_PLAYLIST ( UserID, PlaylistID) VALUES ( 30000 , 30000);

-- Table: USER_PODCAST
CREATE TABLE USER_PODCAST (
    PodcastID INT CHECK (PodcastID >= 1000 and PodcastID <= 9999), 
    UserID VARCHAR CHECK (UserID > 10000 and UserID <= 99999),
    PRIMARY KEY(PodcastID, UserID),
    FOREIGN KEY(PodcastID) REFERENCES PODCAST(PodcastID),
    FOREIGN KEY(UserID) REFERENCES USER(UserID)
    );

INSERT INTO USER_PODCAST ( PodcastID, UserID ) VALUES ( 1000, 10001 );
INSERT INTO USER_PODCAST ( PodcastID, UserID ) VALUES ( 2000, 20000 );
INSERT INTO USER_PODCAST ( PodcastID, UserID ) VALUES ( 2001, 20000 );
INSERT INTO USER_PODCAST ( PodcastID, UserID ) VALUES ( 1000, 30000 );
INSERT INTO USER_PODCAST ( PodcastID, UserID ) VALUES ( 1000, 40000 );
INSERT INTO USER_PODCAST ( PodcastID, UserID ) VALUES ( 2000, 40000 );
INSERT INTO USER_PODCAST ( PodcastID, UserID ) VALUES ( 2001, 40000 );

-- Table: USER_SONG
CREATE TABLE USER_SONG (
    SongID INT CHECK (SongID >= 100000 and SongID <= 999999), 
    UserID INT CHECK (UserID > 10000 and UserID <= 99999),
    PRIMARY KEY(SongID, UserID),
    FOREIGN KEY(SongID) REFERENCES SONG(SongID),
    FOREIGN KEY(UserID) REFERENCES USER(UserID)
    );

INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 10001, 111111 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 10001, 222222 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 10001, 100001 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 20000, 111112 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 20000, 100002 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 30000, 100003 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 30000, 111111 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 40000, 333333 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 40000, 333336 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 40000, 222223 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 50000, 222225 );
INSERT INTO USER_SONG ( UserID, SongID ) VALUES ( 50000, 333335 );

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;




