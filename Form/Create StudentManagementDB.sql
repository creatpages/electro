use StudentManagementDB
go

drop table Student

create table Student(
	[ID] varchar(8) not null,
	[name] nvarchar(30),
	[gender] varchar(1) check ([gender] in ('F', 'M')),
	[mark] float,
	[email] varchar(100)
	CONSTRAINT PK_Student PRIMARY KEY ([ID]),
)
INSERT INTO Student([ID], [name], [gender], [mark], [email])
VALUES
  ('A123',N'Đức Duy','M',10,'duyduc@fpt.edu.vn')


INSERT INTO Student([ID], [name], [gender], [mark], [email])
VALUES
  ('GG113748','Davis Fisher','F',3,'davisfisher701@fpt.edu.vn'),
  ('AR205032','Uriel Davenport','M',8,'urieldavenport@fpt.edu.vn'),
  ('GT125218','Hadley Guthrie','F',2,'hadleyguthrie@fpt.edu.vn'),
  ('SD183581','Stephanie Patel','M',2,'stephaniepatel@fpt.edu.vn'),
  ('IU646884','Erich Jarvis','M',0,'erichjarvis@fpt.edu.vn'),
  ('VH075253','Victor Lopez','M',5,'victorlopez@fpt.edu.vn'),
  ('TK448233','Giacomo Harris','F',2,'giacomoharris@fpt.edu.vn'),
  ('RY121523','Edan Wall','F',2,'edanwall2379@fpt.edu.vn'),
  ('OR276372','Chaney Merritt','M',4,'chaneymerritt1111@fpt.edu.vn'),
  ('AU584321','Marcia Bright','M',8,'marciabright@fpt.edu.vn');
INSERT INTO Student([ID], [name], [gender], [mark], [email])
VALUES
  ('DQ378181','Basil Robles','F',9,'basilrobles6229@fpt.edu.vn'),
  ('IW697881','Beau Shaw','F',4,'beaushaw@fpt.edu.vn'),
  ('VV886059','Indira Schmidt','F',7,'indiraschmidt@fpt.edu.vn'),
  ('NA435471','Garth Becker','F',9,'garthbecker6856@fpt.edu.vn'),
  ('LJ710862','Wynter Cochran','F',6,'wyntercochran5132@fpt.edu.vn'),
  ('DJ529614','Evan Hardy','M',3,'evanhardy@fpt.edu.vn'),
  ('QC754635','Adria Rose','M',8,'adriarose@fpt.edu.vn'),
  ('AW381043','Portia Crane','F',8,'portiacrane8854@fpt.edu.vn'),
  ('DY515323','Vincent Acevedo','F',4,'vincentacevedo@fpt.edu.vn'),
  ('WZ192961','Wendy Lewis','M',2,'wendylewis@fpt.edu.vn');
INSERT INTO Student([ID], [name], [gender], [mark], [email])
VALUES
  ('HX521121','Bell Bradshaw','M',5,'bellbradshaw9040@fpt.edu.vn'),
  ('BQ905838','Jordan Underwood','F',1,'jordanunderwood2578@fpt.edu.vn'),
  ('ZJ545805','Silas Walters','M',3,'silaswalters9068@fpt.edu.vn'),
  ('EL278275','Odysseus Gibbs','M',5,'odysseusgibbs2318@fpt.edu.vn'),
  ('HI079617','Jared Frost','F',2,'jaredfrost2427@fpt.edu.vn'),
  ('PW292033','Lev Gallegos','F',1,'levgallegos5896@fpt.edu.vn'),
  ('II585512','Leila Bishop','F',7,'leilabishop@fpt.edu.vn'),
  ('KA443161','Nathaniel Glover','F',3,'nathanielglover3370@fpt.edu.vn'),
  ('CH486215','Keegan Potts','F',0,'keeganpotts@fpt.edu.vn'),
  ('GD481559','Octavia West','F',7,'octaviawest@fpt.edu.vn');
INSERT INTO Student([ID], [name], [gender], [mark], [email])
VALUES
  ('IR668026','Matthew Hill','F',2,'matthewhill3563@fpt.edu.vn'),
  ('MN252445','Christine Hess','F',4,'christinehess@fpt.edu.vn'),
  ('HN739095','Keefe Pace','F',9,'keefepace@fpt.edu.vn'),
  ('BO195552','Mallory Simpson','M',5,'mallorysimpson5996@fpt.edu.vn'),
  ('VN742977','TaShya Richard','M',0,'tashyarichard6677@fpt.edu.vn'),
  ('RF782974','Carla Anthony','M',4,'carlaanthony2694@fpt.edu.vn'),
  ('TX389646','Noelani Bowers','M',7,'noelanibowers@fpt.edu.vn'),
  ('UV764983','Jack Stevens','M',2,'jackstevens49@fpt.edu.vn'),
  ('SM934021','Daphne Lawson','F',6,'daphnelawson@fpt.edu.vn'),
  ('BM274467','Justin Boone','M',0,'justinboone@fpt.edu.vn');
INSERT INTO Student([ID], [name], [gender], [mark], [email])
VALUES
  ('TC438428','Ava Nichols','F',4,'avanichols5790@fpt.edu.vn'),
  ('FY774115','Blaze Irwin','M',9,'blazeirwin@fpt.edu.vn'),
  ('HQ872474','Ingrid Bradshaw','F',4,'ingridbradshaw6685@fpt.edu.vn'),
  ('CV588362','Malik Downs','M',1,'malikdowns3836@fpt.edu.vn'),
  ('NR061829','Fulton Mcgowan','M',5,'fultonmcgowan4286@fpt.edu.vn'),
  ('BY533286','Ezra Hays','F',4,'ezrahays6016@fpt.edu.vn'),
  ('FJ012840','Allen Hendricks','M',3,'allenhendricks8058@fpt.edu.vn'),
  ('WL717348','Adam Lane','F',1,'adamlane7809@fpt.edu.vn'),
  ('XI254734','Maile Richmond','M',2,'mailerichmond7004@fpt.edu.vn'),
  ('RL747395','Dale Lane','F',4,'dalelane2002@fpt.edu.vn');

  select * from Student