CREATE TABLE g_class(
        gc_id   INT,
        gc_name VARCHAR(50) NOT NULL,
        description     VARCHAR(50) NOT NULL,
        duration        INT,
        level   INT,
        c_id    INT,
        PRIMARY KEY(gc_id),
        UNIQUE(gc_name),
        FOREIGN KEY(c_id) REFERENCES category(c_id)
);
CREATE TABLE instructor(
        i_id    INT,
        i_name  VARCHAR(50) NOT NULL,
        date_birth VARCHAR(50) ,
        PRIMARY KEY(i_id)
);
CREATE TABLE category(
        c_id    INT,
        c_name  VARCHAR(50) NOT NULL,
        PRIMARY KEY(c_id),
        UNIQUE(c_name)
);
CREATE TABLE hall(
        h_id    INT,
        h_name  VARCHAR(50) NOT NULL,
        no_places INT,
        PRIMARY KEY(h_id),
        UNIQUE(h_name)
);
CREATE TABLE tt_class(
        gc_id   INT,
        day_of_week     VARCHAR(50) NOT NULL,
        start_time      TIME,
        end_time        TIME,
        max_participants        INT,
        i_id    INT,
        h_id    INT,
        PRIMARY KEY(gc_id,day_of_week,start_time),
        FOREIGN KEY(i_id) REFERENCES hall(h_id),
        FOREIGN KEY(h_id) REFERENCES instructor(i_id)

);
CREATE TABLE can_instruct(
        i_id INT,
        gc_id   INT,
        PRIMARY KEY(i_id,gc_id),
        FOREIGN KEY(i_id) REFERENCES instructor(i_id),
        FOREIGN KEY(gc_id) REFERENCES g_class(gc_id)
);