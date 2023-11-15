-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `samochody`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auta`
--

CREATE TABLE `auta` (
  `idauta` int(11) NOT NULL,
  `marka` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `model` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `przebieg` int(11) NOT NULL,
  `rocznik` int(11) NOT NULL,
  `kolor` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `auta`
--

INSERT INTO `auta` (`idauta`, `marka`, `model`, `przebieg`, `rocznik`, `kolor`) VALUES
(1, 'Fiat', 'Panda', 124150, 2007, 'white'),
(2, 'Ford', 'Focus', 100415, 2010, 'silver'),
(3, 'Ford', 'Fiesta', 88056, 2011, 'white'),
(4, 'Opel', 'Astra', 45001, 2011, 'yellow'),
(5, 'Opel', 'Corsa', 93470, 2010, 'red'),
(6, 'Fiat', 'Punto', 109849, 2008, 'white'),
(7, 'Opel', 'Zafira', 36398, 2017, 'silver');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `idklienta` int(11) NOT NULL,
  `imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `miasto` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `plec` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`idklienta`, `imie`, `nazwisko`, `miasto`, `plec`) VALUES
(1, 'Andrzej', 'Sądecki', 'Katowice', 'm'),
(2, 'Joanna', 'Śliwińska', 'Warszawa', 'k'),
(3, 'Jan', 'Jakubowski', 'Kraków', 'm'),
(4, 'Anna', 'Mariańska', 'Wrocław', 'k');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `idwyp` int(11) NOT NULL,
  `idklienta` int(11) NOT NULL,
  `idauta` int(11) NOT NULL,
  `datawyp` date NOT NULL,
  `datazwrotu` date NOT NULL,
  `naleznosc` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`idwyp`, `idklienta`, `idauta`, `datawyp`, `datazwrotu`, `naleznosc`) VALUES
(1, 2, 3, '2020-11-04', '2020-11-06', 68.99),
(2, 3, 1, '2020-11-01', '2020-11-13', 430.85),
(3, 4, 5, '2020-11-12', '2020-11-15', 115.45),
(4, 4, 1, '2020-04-15', '2020-04-20', 212.65);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `auta`
--
ALTER TABLE `auta`
  ADD PRIMARY KEY (`idauta`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`idklienta`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`idwyp`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `auta`
--
ALTER TABLE `auta`
  MODIFY `idauta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `idklienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `idwyp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
