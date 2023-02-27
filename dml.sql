INSERT INTO salesperson(
    first_name,
    last_name
) VALUES (
    'Christian',
    'Askew'
),
(
    'Dylan',
    'Katina'
);

INSERT INTO employees(
    first_name,
    last_name,
    department
) VALUES (
    'Christian',
    'Askew',
    'Sales'
),
(
    'Dylan',
    'Katina',
    'Sales'
)

INSERT INTO customers(
    first_name,
    last_name,
    cust_address,
    phone_number
) VALUES (
    'Dominic',
    'Toretto',
    '2023 family street',
    '999-999-9999'
),
(
    'Iron',
    'Man',
    'i love you 3000 avenue',
    '3000-3000-3000'
);

INSERT INTO new_cars(
    make,
    model,
    year,
    price_range
) VALUES (
    'Hyundai',
    'Elantra',
    '2023',
    '20000~25000'
),
(
    'Honda',
    'Civic',
    '2023',
    '18000~24000'
);

INSERT INTO used_cars(
    make,
    model,
    year,
    price_range,
    mileage
) VALUES (
    'Hyundai',
    'Tucson',
    '2015',
    '15000~18000',
    '65000'
),
(
    'BMW',
    'i8',
    '2018',
    '90000~120000',
    '23485'
);

INSERT INTO mechanics(
    first_name,
    last_name
) VALUES (
    'Drew',
    'Schenider'
),
(
    'Aretha',
    'Franklisny'
);

INSERT INTO service_ticket(
    service_name,
    amount
) VALUES (
    'Oil Change',
    '120'
),
(
    'Wheel Alignment',
    '50'
);

INSERT INTO invoices(
    car_name,
    amount
) VALUES (
    '2023 Hyundai Elantra',
    '22500'
),
(
    '2018 Bmw i8',
    '93000'
);

INSERT INTO inventory(
    car_name,
    price_range
) VALUES(
    '2018 BMW i8',
    '90000~120000'
),
(
    '2015 Hyundai Tucson',
    '15000~18000'
),
(
    '2023 Hyundai Elantra',
    '20000~25000'
),
(
    '2023 Honda Civic',
    '18000~24000'
);