-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Lut 2019, 04:25
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projektbd`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `datasem`
--

CREATE TABLE `datasem` (
  `idSem` int(11) NOT NULL,
  `dataPocz` date DEFAULT NULL,
  `dataKon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `datasem`
--

INSERT INTO `datasem` (`idSem`, `dataPocz`, `dataKon`) VALUES
(2, '2018-09-01', '2019-06-26'),
(3, '2019-01-01', '2019-08-31');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

CREATE TABLE `klasa` (
  `idklasa` int(11) NOT NULL,
  `Nazwaklasa` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `klasa`
--

INSERT INTO `klasa` (`idklasa`, `Nazwaklasa`) VALUES
(1, '1A'),
(2, '1B'),
(3, '1C'),
(4, '1D'),
(5, '2A'),
(6, '2B'),
(7, '2C'),
(8, '2D'),
(9, '3A'),
(10, '3B'),
(11, '3C'),
(12, '3D'),
(13, '4A'),
(14, '4B'),
(15, '4C'),
(16, '4D'),
(17, '5A'),
(18, '5B'),
(19, '5C'),
(20, '5D'),
(21, '6A'),
(22, '6B'),
(23, '6C'),
(24, '6D'),
(25, '7A'),
(26, '7B'),
(27, '7C'),
(28, '7D'),
(29, '8A'),
(30, '8B'),
(31, '8C'),
(32, '8D');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel`
--

CREATE TABLE `nauczyciel` (
  `idNau` int(11) NOT NULL,
  `Imie` text COLLATE utf8_polish_ci,
  `Nazwisko` text COLLATE utf8_polish_ci,
  `nazwaUz` text COLLATE utf8_polish_ci,
  `Haslo` text COLLATE utf8_polish_ci,
  `mail` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `nauczyciel`
--

INSERT INTO `nauczyciel` (`idNau`, `Imie`, `Nazwisko`, `nazwaUz`, `Haslo`, `mail`) VALUES
(1, 'Jan', 'Matuszek', 'janmat400', '1234567', 'janma@gmail.com'),
(2, 'Janusz', 'Szot', 'janszo409', '49976227', 'dobreszoty@gmail.com'),
(3, 'Adrian', 'Trzeps', 'adrtrz667', '82343370', 'adfre@gm.com'),
(4, 'Adrian', 'Myk', 'adrmyk364', '71232927', 'admyk@gmail.com'),
(5, 'Esmeralda', 'Godlewska', 'esmgod786', '41933725', 'siostrzyczkagodlewska@gmail.com'),
(6, 'Amelia', 'Olszewska', 'ameols111', '61737567', 'Amelia.Olszewska@gmail.com'),
(7, 'Kacper', 'Nowicki', 'kacnow560', '63336644', 'kacperNow@gmail.com'),
(8, 'Julia', 'Kwiecień', 'julkwi425', '63319683', 'Jkwiecien@gmail.com'),
(9, 'Maciej', 'Krzyż', 'mackrz209', '20654513', 'mackrzyz@gmail.com'),
(10, 'Małgorzata', 'Godlewska', 'małgod458', '61978115', 'siostrzyczkadrugagodlewska@gmail.com'),
(11, 'Jacek', 'Stachur', 'jacsta605', '59803422', 'jacek.stachur@gmail.com'),
(12, 'Anna', 'Poczłok', 'annpoc219', '74866357', 'annpoczlok@gmail.com'),
(13, 'Fryderyk', 'Kocur', 'frykoc113', '71838610', 'frycekkot@gmail.com'),
(14, 'Juwita', 'Jarębina', 'juwjar252', '48526546', 'juwita@gmail.com'),
(15, 'Eustachy', 'Gupik', 'eusgup111', '26089303', 'gupikrybka@gmail.com'),
(16, 'Emanuela', 'Krakowska', 'emakra166', '41245460', 'emanuelak@gmail.com'),
(17, 'Dariusz', 'Sanitariusz', 'darsan960', '71325480', 'sanitariusz.dariusz@gmail.com'),
(18, 'Julian', 'Smalec', 'julsma386', '18313061', 'julek.smalec@gmail.com'),
(19, 'Elżbieta', 'Nówka', 'elżnów1525', '76742184', 'elznow@gmail.com'),
(20, 'Marcin', 'Tester', 'martes8917', '62287162', 'marcintester@gmail.com'),
(21, 'Mariusz', 'Tester', 'martes1415', '50080006', 'martes1415@gmail.com'),
(22, 'Antonii', 'Kolejny', 'antkol4620', '41965759', 'antkol4620@gmail.com'),
(23, 'Inny', 'Nauczyciel', 'nauzapas', 'nauzapas', 'inny@inny.szkola.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ocena`
--

CREATE TABLE `ocena` (
  `idOc` int(11) NOT NULL,
  `Wartosc` double DEFAULT NULL,
  `NazwaCw` text COLLATE utf8_polish_ci,
  `idUcz` int(11) DEFAULT NULL,
  `idNau` int(11) DEFAULT NULL,
  `idPrzed` int(11) DEFAULT NULL,
  `DataWyst` date DEFAULT NULL,
  `idSem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ocena`
--

INSERT INTO `ocena` (`idOc`, `Wartosc`, `NazwaCw`, `idUcz`, `idNau`, `idPrzed`, `DataWyst`, `idSem`) VALUES
(1, 50, 'Sprawdzian', NULL, 1, 2, '2019-02-20', 3),
(2, 50, 'Kartkówka', NULL, 1, 2, '2019-02-20', 3),
(3, 40, 'Odpowiedź przy tablicy', NULL, 1, 2, '2019-02-20', 3),
(4, 30, 'Modlitwa', 6, NULL, 16, '2019-02-20', 3),
(5, 50, 'Przykazania Boże', 6, NULL, 16, '2019-02-20', 3),
(6, 50, 'Przykazania Boże', 6, 23, 16, '2019-02-20', 3),
(7, 50, 'Odpowiedź ustna', 16, 1, 2, '2019-02-20', 3),
(8, 45, 'Kartkówka', 16, 1, 2, '2019-02-20', 3),
(9, 50, 'Sprawdzian', 16, 1, 2, '2019-02-20', 3),
(10, 30, 'Zadanie domowe', 16, 1, 2, '2019-02-20', 3),
(11, 50, 'Konkurs', 16, 1, 2, '2019-02-20', 3),
(12, 30, 'Sprawdzian', 16, 1, 2, '2019-02-21', 3),
(13, 35, 'Sprawdzian', 17, 1, 2, '2019-02-21', 3),
(14, 50, 'Kartkówka', 16, 1, 2, '2019-02-21', 3),
(15, 35, 'Kartkówka', 16, 1, 2, '2019-02-21', 3),
(16, 40, 'Kartkówka', 17, 1, 2, '2019-02-21', 3),
(17, 50, 'Kartkówka', 17, 1, 2, '2019-02-21', 3),
(18, 45, 'asdas', NULL, 19, NULL, '2019-02-21', 3),
(19, 45, 'asdas', NULL, 19, NULL, '2019-02-21', 3),
(20, 50, 'Myślenie mat.', 16, 1, 2, '2019-02-21', 3),
(21, 50, 'Przysiady', 16, 14, 11, '2019-02-21', 3),
(22, 50, 'Przysiady', 17, 14, 11, '2019-02-21', 3),
(23, 45, 'Koszykówka zal', 17, 14, 11, '2019-02-21', 3),
(24, 40, 'Koszykówka zal', 16, 14, 11, '2019-02-21', 3),
(25, 30, 'Bieg 100m', 17, 14, 11, '2019-02-21', 3),
(26, 50, 'Bieg 100m', 16, 14, 11, '2019-02-21', 3),
(27, 50, 'Siatkówka', 16, 14, 11, '2019-02-21', 3),
(28, 50, 'Siatkówka', 17, 14, 11, '2019-02-21', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ocenako`
--

CREATE TABLE `ocenako` (
  `idOcKon` int(11) NOT NULL,
  `idPrzed` int(11) DEFAULT NULL,
  `idNau` int(11) DEFAULT NULL,
  `dataWyst` date DEFAULT NULL,
  `Wartosc` int(11) DEFAULT NULL,
  `Zaliczony` varchar(10) COLLATE utf8_polish_ci DEFAULT NULL,
  `idUcz` int(11) DEFAULT NULL,
  `idSem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `ocenako`
--

INSERT INTO `ocenako` (`idOcKon`, `idPrzed`, `idNau`, `dataWyst`, `Wartosc`, `Zaliczony`, `idUcz`, `idSem`) VALUES
(1, 2, 1, '2019-02-21', 40, 'tak', 16, 3),
(2, 2, 1, '2019-02-21', 40, 'tak', 17, 3),
(3, 11, 14, '2019-02-21', 50, 'tak', 16, 3),
(4, 11, 14, '2019-02-21', 45, 'tak', 17, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

CREATE TABLE `przedmiot` (
  `idPrzed` int(11) NOT NULL,
  `NazwaPrz` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `przedmiot`
--

INSERT INTO `przedmiot` (`idPrzed`, `NazwaPrz`) VALUES
(1, 'Język polski'),
(2, 'Matematyka'),
(3, 'Fizyka'),
(4, 'Biologia'),
(5, 'Geografia'),
(6, 'Chemia'),
(7, 'EDB'),
(8, 'Język angielski'),
(9, 'Przyroda'),
(10, 'Historia'),
(11, 'Wychowanie Fizyczne'),
(12, 'Język niemiecki'),
(13, 'Muzyka'),
(14, 'Technika'),
(15, 'Wiedza o społeczeństwie'),
(16, 'Religia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przypisnau`
--

CREATE TABLE `przypisnau` (
  `id` int(11) NOT NULL,
  `idNau` int(11) DEFAULT NULL,
  `idPrzed` int(11) DEFAULT NULL,
  `idklasa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `przypisnau`
--

INSERT INTO `przypisnau` (`id`, `idNau`, `idPrzed`, `idklasa`) VALUES
(1, 1, 2, 29),
(2, 1, 2, 32),
(3, 1, 2, 30),
(4, 1, 2, 31),
(5, 1, 2, 25),
(6, 1, 2, 26),
(7, 1, 2, 27),
(8, 1, 2, 28),
(9, 2, 3, 25),
(10, 2, 3, 26),
(11, 2, 3, 27),
(12, 2, 3, 28),
(13, 2, 3, 29),
(14, 2, 3, 30),
(15, 2, 3, 31),
(16, 2, 3, 32),
(17, 3, 6, 25),
(18, 3, 6, 26),
(19, 3, 6, 27),
(20, 3, 6, 28),
(21, 3, 6, 29),
(22, 3, 6, 30),
(23, 3, 6, 31),
(24, 3, 6, 32),
(25, 6, 4, 25),
(26, 6, 4, 26),
(27, 6, 4, 27),
(28, 6, 4, 28),
(29, 6, 4, 29),
(30, 6, 4, 30),
(31, 6, 4, 31),
(32, 6, 4, 32),
(33, 1, 2, 13),
(34, 1, 2, 14),
(35, 1, 2, 15),
(36, 1, 2, 16),
(37, NULL, NULL, NULL),
(38, NULL, NULL, NULL),
(39, 23, 16, 1),
(40, 19, 15, 32),
(41, 14, 11, 13);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tabelaczucznklasa`
--

CREATE TABLE `tabelaczucznklasa` (
  `id` int(11) NOT NULL,
  `idUcz` int(11) DEFAULT NULL,
  `idklasa` int(11) DEFAULT NULL,
  `Data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `tabelaczucznklasa`
--

INSERT INTO `tabelaczucznklasa` (`id`, `idUcz`, `idklasa`, `Data`) VALUES
(1, 1, 7, NULL),
(2, 2, 17, NULL),
(3, 3, 8, NULL),
(4, 4, 5, NULL),
(5, 5, 6, NULL),
(6, 6, 1, NULL),
(7, 7, 1, NULL),
(8, 8, 2, NULL),
(9, 9, 2, NULL),
(10, 10, 3, NULL),
(11, 11, 3, NULL),
(12, NULL, 3, NULL),
(13, 13, 4, NULL),
(14, 14, 4, NULL),
(15, NULL, 13, NULL),
(16, 16, 13, NULL),
(17, 17, 13, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

CREATE TABLE `uczen` (
  `idUcz` int(11) NOT NULL,
  `imie` text COLLATE utf8_polish_ci,
  `nazwisko` text COLLATE utf8_polish_ci,
  `nazwaUz` text COLLATE utf8_polish_ci,
  `haslo` text COLLATE utf8_polish_ci,
  `mail` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczen`
--

INSERT INTO `uczen` (`idUcz`, `imie`, `nazwisko`, `nazwaUz`, `haslo`, `mail`) VALUES
(1, 'Jan', 'Kowal', 'jankow770', '70751576', 'jankowal@gmail.com'),
(2, 'Kazimierz', 'Stonoga', 'kazsto532', '23747379', 'kazik@gmail.com'),
(3, 'Katarzyna', 'Kamińska', 'katkam223', '15712236', 'katka@gmail.com'),
(4, 'Marta', 'Kamilczak', 'markam777', '15712237', 'marka@gmail.com'),
(5, 'Dariusz', 'Rogoczynski', 'darrog890', '32799524', 'darkus@gmail.com'),
(6, 'Marcel', 'Kaczuszka', 'markac327', '70952788', 'marcelek@gmail.com'),
(7, 'Ania', 'Wzgórze', 'aniwzg544', '56680757', 'aniawzgórze@o2.pl'),
(8, 'Martyna', 'Pawełczyk', 'marpaw288', '29081287', 'martynkapawe@buziaczek.pl'),
(9, 'Jan', 'Wozikoń', 'janwoz498', '99019495', 'janek213392@gmail.com'),
(10, 'Arnold', 'Kazimierz', 'arnkaz574', '40607424', 'counterstrikearnold@yahoo.com'),
(11, 'Julian', 'Ostrołęka', 'julost310', '14096368', 'ostry@interia.pl'),
(13, 'Alina', 'Bokowiec', 'alibok522', '10385179', 'alineczkama@interia.pl'),
(14, 'Zygmunt', 'Wawrzyniak', 'zygwaw250', '55631851', 'zigafest@onet.pl'),
(16, 'Maciek', 'Czarek', 'maccza5839', '54006789', 'maciekczarek@buziaczek.pl'),
(17, 'Marcin', 'Pawlik', 'marpaw5987', '44427990', 'marpaw@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzadministrator`
--

CREATE TABLE `uzadministrator` (
  `idAdmin` int(11) NOT NULL,
  `imie` text COLLATE utf8_polish_ci,
  `nazwisko` text COLLATE utf8_polish_ci,
  `nazwaUz` text COLLATE utf8_polish_ci,
  `haslo` text COLLATE utf8_polish_ci,
  `mail` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uzadministrator`
--

INSERT INTO `uzadministrator` (`idAdmin`, `imie`, `nazwisko`, `nazwaUz`, `haslo`, `mail`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `datasem`
--
ALTER TABLE `datasem`
  ADD PRIMARY KEY (`idSem`);

--
-- Indeksy dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`idklasa`);

--
-- Indeksy dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD PRIMARY KEY (`idNau`);

--
-- Indeksy dla tabeli `ocena`
--
ALTER TABLE `ocena`
  ADD PRIMARY KEY (`idOc`),
  ADD KEY `idSem` (`idSem`),
  ADD KEY `idUcz` (`idUcz`),
  ADD KEY `idNau` (`idNau`),
  ADD KEY `idPrzed` (`idPrzed`);

--
-- Indeksy dla tabeli `ocenako`
--
ALTER TABLE `ocenako`
  ADD PRIMARY KEY (`idOcKon`),
  ADD KEY `idSem` (`idSem`),
  ADD KEY `idUcz` (`idUcz`),
  ADD KEY `idNau` (`idNau`),
  ADD KEY `idPrzed` (`idPrzed`);

--
-- Indeksy dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`idPrzed`);

--
-- Indeksy dla tabeli `przypisnau`
--
ALTER TABLE `przypisnau`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idNau` (`idNau`),
  ADD KEY `idPrzed` (`idPrzed`),
  ADD KEY `idklasa` (`idklasa`);

--
-- Indeksy dla tabeli `tabelaczucznklasa`
--
ALTER TABLE `tabelaczucznklasa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUcz` (`idUcz`),
  ADD KEY `idklasa` (`idklasa`);

--
-- Indeksy dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`idUcz`);

--
-- Indeksy dla tabeli `uzadministrator`
--
ALTER TABLE `uzadministrator`
  ADD PRIMARY KEY (`idAdmin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `datasem`
--
ALTER TABLE `datasem`
  MODIFY `idSem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `klasa`
--
ALTER TABLE `klasa`
  MODIFY `idklasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  MODIFY `idNau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `ocena`
--
ALTER TABLE `ocena`
  MODIFY `idOc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `ocenako`
--
ALTER TABLE `ocenako`
  MODIFY `idOcKon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `idPrzed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `przypisnau`
--
ALTER TABLE `przypisnau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT dla tabeli `tabelaczucznklasa`
--
ALTER TABLE `tabelaczucznklasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `uczen`
--
ALTER TABLE `uczen`
  MODIFY `idUcz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `uzadministrator`
--
ALTER TABLE `uzadministrator`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `ocena`
--
ALTER TABLE `ocena`
  ADD CONSTRAINT `ocena_ibfk_1` FOREIGN KEY (`idSem`) REFERENCES `datasem` (`idSem`),
  ADD CONSTRAINT `ocena_ibfk_2` FOREIGN KEY (`idUcz`) REFERENCES `uczen` (`idUcz`),
  ADD CONSTRAINT `ocena_ibfk_3` FOREIGN KEY (`idNau`) REFERENCES `nauczyciel` (`idNau`),
  ADD CONSTRAINT `ocena_ibfk_4` FOREIGN KEY (`idPrzed`) REFERENCES `przedmiot` (`idPrzed`);

--
-- Ograniczenia dla tabeli `ocenako`
--
ALTER TABLE `ocenako`
  ADD CONSTRAINT `ocenako_ibfk_1` FOREIGN KEY (`idSem`) REFERENCES `datasem` (`idSem`),
  ADD CONSTRAINT `ocenako_ibfk_2` FOREIGN KEY (`idUcz`) REFERENCES `uczen` (`idUcz`),
  ADD CONSTRAINT `ocenako_ibfk_3` FOREIGN KEY (`idNau`) REFERENCES `nauczyciel` (`idNau`),
  ADD CONSTRAINT `ocenako_ibfk_4` FOREIGN KEY (`idPrzed`) REFERENCES `przedmiot` (`idPrzed`);

--
-- Ograniczenia dla tabeli `przypisnau`
--
ALTER TABLE `przypisnau`
  ADD CONSTRAINT `przypisnau_ibfk_1` FOREIGN KEY (`idNau`) REFERENCES `nauczyciel` (`idNau`),
  ADD CONSTRAINT `przypisnau_ibfk_2` FOREIGN KEY (`idPrzed`) REFERENCES `przedmiot` (`idPrzed`),
  ADD CONSTRAINT `przypisnau_ibfk_3` FOREIGN KEY (`idklasa`) REFERENCES `klasa` (`idklasa`);

--
-- Ograniczenia dla tabeli `tabelaczucznklasa`
--
ALTER TABLE `tabelaczucznklasa`
  ADD CONSTRAINT `tabelaczucznklasa_ibfk_1` FOREIGN KEY (`idUcz`) REFERENCES `uczen` (`idUcz`),
  ADD CONSTRAINT `tabelaczucznklasa_ibfk_2` FOREIGN KEY (`idklasa`) REFERENCES `klasa` (`idklasa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
