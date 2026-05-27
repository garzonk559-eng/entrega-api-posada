CREATE DATABASE IF NOT EXISTS reservation_system;
USE reservation_system;

CREATE TABLE IF NOT EXISTS reservations (
    id BIGINT NOT NULL,
    guestId VARCHAR(255) NOT NULL,
    roomId VARCHAR(50) NOT NULL,
    checkIn DATE NOT NULL,
    checkOut DATE,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS reservations_SEQ (
    next_val BIGINT
);
INSERT INTO reservations_SEQ (next_val) VALUES (1);

INSERT INTO reservations (id, guestId, roomId, checkIn, checkOut) VALUES
(1, '1001', '5', '2026-05-20', '2026-05-25'),
(2, '1002', '3', '2026-06-01', '2026-06-10'),
(3, '1003', '7', '2026-07-15', '2026-07-20');

UPDATE reservations_SEQ SET next_val = 4;