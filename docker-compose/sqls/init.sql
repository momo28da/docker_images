CREATE DATABASE equipment_tenant;

CREATE USER `slg_developer`@`%` IDENTIFIED BY 'VvPVReh2';

GRANT ALL PRIVILEGES ON equipment_tenant.* TO `slg_developer`@`%`;

FLUSH PRIVILEGES;