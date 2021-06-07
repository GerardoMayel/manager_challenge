
create database IF NOT EXISTS gentera_data;

use gentera_data;

drop table if exists model_validation;

create table if NOT EXISTS model_validation (

    model_id integer not null auto_increment primary key,
    model_name varchar(50),
    model_metric varchar(50),
    model_value float(10,4)

);

insert into model_validation (model_name, model_metric, model_value) values 
("Linear","MAE", 2300.0491),
("Linear","RMSE", 3857.4777),
("Linear","R^2 Score", 0.8470),
("Lasso","MAE", 2343.9817),
("Lasso","RMSE", 3929.7133),
("Lasso","R^2 Score", 0.8470),
("Ridge","MAE", 2302.2564),
("Ridge","RMSE", 3866.9362),
("Ridge","R^2 Score", 0.8518)
;

select * from gentera_data.model_validation;
