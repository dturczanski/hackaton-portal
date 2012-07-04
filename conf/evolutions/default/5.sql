# Last evolution contains ONLY test data
# this evolution is removed when deploying to Heroku!

# --- !Ups 

insert into users (name, email, github_username, open_id) values ('Łukasz Budnik','email', 'lukasz-budnik', '108382012254355503021google');
insert into users (name, email, github_username, open_id) values ('test','email', 'test', 'open_id_test');

insert into roles (name) values ('admin');

insert into users_roles (user_id, role_id) values (1, 1);

insert into news (title, text, labels, published, author_id) values ('Tytuł', 'This is an example <!--more-->of multiline news', 'label1, label2', '2012-01-01 00:00:00', 1);
insert into news (title, text, labels, published, author_id) values ('Tytuł 2', 'This is an example <!--more-->of multiline news', 'label1, label3', '2012-01-02 00:00:00', 1);

insert into locations (country, city, postal_code, full_address, name, latitude, longitude) values ('Polska', 'Gdańsk', '80-000', 'Ul. Długa 55', 'Hackaton venue!', 54.366667, 18.633333);
insert into hackathons (subject, status, submitter_id, location_id) values ('Hackaton testowy', 1, 1, 1);

insert into locations (country, city, postal_code, full_address, name, latitude, longitude) values ('Polska', 'Warszawa', '80-000', 'Ul. Krótka 5', 'Hackaton venue!', 52.2323, 21.008433);
insert into hackathons (subject, status, submitter_id, location_id) values ('Hackaton testowy', 2, 1, 2);

insert into problems (name, description, submitter_id, hackathon_id) values ('Problem 1.', 'Problem testowy', 1, 1);
insert into problems (name, description, submitter_id, hackathon_id) values ('Problem 2.', 'Problem testowy numer 2.', 1, 1);

insert into teams (name, creator_id, hackathon_id) values ('Team 1.', 1, 1);
insert into teams (name, creator_id, hackathon_id) values ('Team 2.', 2, 1);

# --- !Downs

delete from teams;

delete from problems;
    
delete from hackathons;

delete from locations;
    
delete from news;
    
delete from users;