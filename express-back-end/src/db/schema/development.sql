INSERT INTO users (name, email, password)
VALUES
('Elise Carter', 'rosalinda_mclaughlin@hotmail.com', 'password'),
('Micheal Schmidt', 'wilkinson.timmothy@hotmail.com', 'password'),
('Anderson Stokes', 'reichel_albina@stamm.info', 'password'),
('Eunice Morar', 'danielle.aufderhar@kilback.net', 'password'),
('Brian Jones', 'percy_ratke@cornelius.biz', 'password'),
('Herminia Smitham', 'sawayn.sarina@yahoo.com', 'password'),
('Darien Luettgen', 'issac_collins@pink.io', 'password'),
('Irwin King', 'kody_pfannerstill@john.us', 'password'),
('Stan Miller', 'mcdermott.maxie@schoen.com', 'password'),
('Giovanny Bradtke', 'leatha.lindgren@hotmail.com', 'password'),
('Benedict Berge', 'ortiz.turner@hotmail.com', 'password'),
('Lloyd Boehm', 'ebba.deckow@yahoo.com', 'password'),
('Baylee Lueilwitz', 'pinkie.rogahn@yahoo.com', 'password'),
('Lenny Muller', 'howe_jevon@harber.com', 'password'),
('Brandon Rowlandson', 'brandon.onaroll@pierre.us', 'password'),
('Casey Wood', 'casey.woodpecker@hotmail.com', 'password'),
('Holly Nitzsche', 'lindsey.barrows@marcellus.info', 'password'),
('Fannie Hammes', 'alden.mayer@becker.tv', 'password'),
('Jerrold Lindgren', 'jabari.stoltenberg@witting.biz', 'password'),
('Dylan Pagac', 'jacobi_marie@witting.net', 'password');


INSERT INTO clients (user_id) VALUES (1), (2), (5), (7), (8), (10), (11), (14), (15), (17), (18);

INSERT INTO lawyers (user_id, profile, rate, years_of_experience) 
VALUES 
(3, 'I am specialized dedicated in serving family related legal issues', 150, 8),
(4, 'I am specialized dedicated in serving business related legal issues', 250, 15), 
(6, 'I am specialized dedicated in serving civil rights related legal issues', 200, 12), 
(9, 'I am specialized dedicated in serving environmental related legal issues', 175, 10),
(12, 'I am specialized dedicated in serving family related legal issues', 150, 8),
(13, 'I am specialized dedicated in serving business related legal issues', 250, 15), 
(16, 'I am specialized dedicated in serving civil rights related legal issues', 200, 12), 
(19, 'I am specialized dedicated in serving environmental related legal issues', 175, 10),
(20, 'I am specialized dedicated in serving environmental related legal issues', 175, 10);

INSERT INTO specialities (name, definition)
VALUES
('Business Law', 'Corporate law involves the formation, dissolution, and all other legal aspects of the administration of corporations. Typical duties of corporate lawyers include mergers, acquisitions, internal reorganization, or disputes between corporations and individuals concerning liability, patents, and compliance with state and federal law, as well as international accords. A legal professional whose sole client is a corporation is generally known as in-house counsel.'),
('Bankruptcy Law', 'Bankruptcy law applies to the insolvency problems of individuals as well as organizations. This type of law issues directly from the Constitution and is in the domain of Federal law, though State laws have an important effect on bankruptcy procedure.'),
('Civil Rights Law', 'Civil rights law aims to balance competing interests between institutions of government on the one hand and individuals or groups of individuals on the other. Lawyers in such practice may work on cases involving discrimination and unfair practices that infringe on rights and liberties such as expression, employment, housing, education, or other entitlements.'),
('Criminal Law', 'Criminal law focuses on behaviors that are sanctioned under criminal code and defined as illegal. Prosecutors and District Attorneys sanction illegal behavior, while criminal defense lawyers represent clients accused of criminal activity. Both prosecution and defense professionals deal with issues of individual liberty, basic rights, and responsibilities. In some Common Law countries other than the U.S., and in most Civil Law countries, the roles of a prosecutor (or procurator) and defense lawyer (or advocate) are separated more clearly into different professional specialties.'),
('Environmental Law', 'Environmental law concerns a multitude of statutes, treaties, regulations, and conventions based in state, federal, or transnational law. Legal professionals practicing in this field may represent government agencies, advocacy organizations, or individuals. Environmental lawyers often focus on cases involving natural resource management, the curbing of pollution, or disputes about land and littoral use. Public health components are increasingly common in the practice of environmental law.'),
('Family Law', 'Family law focuses on legal relations between individuals in the context of the family. Lawyers in this field typically work in smaller firms and specialize in a variety of areas ranging from child welfare, through adoption, to divorce. Child abuse, legitimacy, civil unions, domestic partnerships, and marriages are among the main aspects of family lawyers practice.'),
('Immigration Law', 'Immigration lawyers work with individual clients at all stages of the naturalization process. Other aspects of the profession relate to refugee and asylum seekers, as well as to individuals in the country without legal permission. This field of law varies significantly from country to country. Much of its practice depends on international treaties, bilateral accords, and political conjecture.'),
('Labor Law', 'Labor law is concerned with the relations between workers and their employers on matters ranging from wages and compensation, through harassment, to discrimination based on gender, disability, or age. Labor law often involves collective bargaining and unions. Attorneys in this field may represent individual clients, a union, a government regulatory agency, or an employer.');

INSERT INTO lawyer_speciality (lawyer_id, speciality_id)
VALUES
(1, 1),
(1, 4),
(1, 6),
(2, 1),
(2, 2),
(2, 7),
(2, 8),
(3, 3),
(3, 4),
(3, 7),
(4, 1),
(4, 5),
(5, 2),
(5, 8),
(6, 4),
(7, 1),
(7, 2),
(8, 3),
(8, 5),
(8, 7),
(9, 1),
(9, 2),
(9, 5),
(9, 8);


INSERT INTO user_types (user_id, name)
VALUES
(1, 'Client'),
(2, 'Client'),
(3, 'Lawyer'),
(4, 'Lawyer'),
(5, 'Client'),
(6, 'Lawyer'),
(7, 'Client'),
(8, 'Client'),
(9, 'Lawyer'),
(10, 'Client'),
(11, 'Client'),
(12, 'Lawyer'),
(13, 'Lawyer'),
(14, 'Client'),
(15, 'Client'),
(16, 'Lawyer'),
(17, 'Client'),
(18, 'Client'),
(19, 'Lawyer'),
(20, 'Lawyer');

INSERT INTO cases (lawyer_id, client_id, name, date, description)
VALUES
(1, 1, 'rental dispute with my landlord over having a pet cat', '2020-12-01', 'My name is Egg Eggerson, I got into an argument with my landlord recently over my cat Smooj. When I signed the rental contract, the contract did not address anything about tenant owning pets, so I assumed it is okay for me to have a cat. I have been living in this apartment for over a year now, and recently my landlord found out from the neighbours that I have a cat. She said I could either move out this month or get rid of Smooj. Of course getting rid of Smooj is not an option for me, so I want to know if she is allowed to make me move out under this circumstance.Please contact me, if you are experience in handling rental dispute!! Much thanks!!'),
(2, 5, 'Business tax', '2021-01-12', 'My company is being charged for evading payment of over 2 million in taxes. I was not aware of the financial situation of my company, even though I am the sole owner. My best friend Joey handles the financial side of the business, but he recently disappeared. I am looking for a lawyer who can keep me out of jail before I find Joey. Please email me if you are interested in my case, I am not a fan of phone calls. Thanks.'),
(3, 3, 'Police abuse', '2021-04-22', 'I was attacked by a policeman who stopped me on the street last Friday night. She showed me her badge quicky, but I did not get a good look. She then told me give my protein bar to her. She asked me if I have any more protein bars with me. I lied and said no. She did not believe me. I was body searched by her and she took away my 3 other protein bars. She drove away in a police car, I memorized the license. I would like to get compensated for this assult and for my lost. If you are experience in personal injury/assult or police brutality cases,s call me. I amusually on my phone 25/8. Cheers.'),
(5, 4, 'need help with bankruptcy paperwork', '2021-04-22', 'I am filing for bankrupty, my partner took my pet turtle, my money and left me with nothing. I need someone to help me file for bankruptcy and do not worry, I can pay. Text, only, thanks.'),
(3, 1, 'looking for a kickass divorce lawyer', '2017-03-16', 'My partner and I are spliting up and I do not want to split our shared property evenly with the guy. I also do not want to share custody of his 25 cats. I need help quick, call me night or day, I do not care. I will pay handsomely if you can get the job done. Man, I cannot live with 12.5 cats.'),
(3, 2, 'starting my own company, need help with investor contracts', '2019-02-06', 'I recently started my own soap company, and I was approached by investors. I do not much when it comes to legal paperworks and I would like to have a professional to look over the contracts the investor company sent to me to sign. Lawyers with corporate law experience would be preferrable. I might not reply right away, please be patient :)'),
(3, 9, 'I want to patent my iron man suit', '2019-02-06', 'I recently build my own iron man suit, it is super cool and better than the ones in the movies. But my friends mentioned to me that I probably should patent it. I also want to start a business selling these awesome suits, so if you are familiar with business law, that would be great. If not, please check out my instagram account: @MrCreator45903. Like and subscribe! Peace!'),
(3, 7, 'I want to sue my previous employer', '2020-09-18', 'I would like to look into suing my previous employer. I worked for him for more than a year and he has a bad temper. I was facing verbal abuse almost every week since my sixth month there. He asked me questions like: Are you really that dumb? I have recording of him saying those kind of things to me. I would like to get some legal advice on pressing charges against him. Please contact me.'),
(8, 4, 'looking for a civil right lawyer', '2020-06-28', 'I found out I was paid less than my colleague who has the same job postition, need some professional advice as to how to handle this injustice!!'),
(2, 9, 'need helping bailing out my son', '2021-03-18', 'My son was been charged of theft, and this is his third offence. The judge has set the bail amount so high, I will not be able to pay. Need help quick! My son will not survive long in a holding cell.'),
(2, 5, 'paperwork for my will', '2021-09-08', 'Rich and old, drafting my will, help needed to make it legitimate. My secretary will be in contact with you first if you are interested for the job.'),
(6, 3, 'want a consultation on my immigration status', '2021-10-11', 'Having some toruble getting my PR, would like some help with the paperwork. Thx');

INSERT INTO case_speciality (case_id, speciality_id)
VALUES
(1, 3),
(2, 1),
(3, 3),
(4, 2),
(5, 6),
(6, 1),
(7, 3),
(8, 8),
(9, 3),
(10, 4),
(11, 6),
(12, 7);

INSERT INTO reviews (lawyer_id, client_id, date, content)
VALUES
(1, 1, '2021-01-04', 'Anderson is very helpful and compassionate in helping us dealing with our family issues'),
(2, 4, '2021-03-24', 'very professional and knowledgable');

INSERT INTO messages (sender_id, receiver_id, time, message)
VALUES
(1, 3, '2021-01-04 10:23:54', 'Hi Anderson'),
(3, 1, '2021-03-24 10:24:04', 'Hi there, how can I help you?'),
(1, 3, '2021-01-04 10:24:08', 'My name is Elise and I am wondering if you could help me with my case.'),
(3, 1, '2021-03-24 10:24:15', 'Sure, I can try to take a look into your case.');

INSERT INTO locations (user_id, city)
VALUES
(1, 'Vancouver'),
(2, 'Vancouver'),
(3, 'Calgary'),
(4, 'Toronto'),
(5, 'Toronto'),
(6, 'Edmonton'),
(7, 'Edmonton'),
(8, 'Calgary'),
(9, 'Vancouver'),
(10, 'Toronto'),
(11, 'Vancouver'),
(12, 'Saskatoon'),
(13, 'Edmonton'),
(14, 'Calgary'),
(15, 'Calgary'),
(16, 'Saskatoon'),
(17, 'Edmonton'),
(18, 'Victoria'),
(19, 'Vancouver'),
(20, 'Toronto');