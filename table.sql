CREATE TABLE games (
    game_id INT AUTO_INCREMENT PRIMARY KEY,
    player1_id INT,
    player2_id INT,
    active_player_id INT,
    winner_id INT,
    status ENUM('ongoing', 'tie', 'player1_win', 'player2_win') DEFAULT 'ongoing'
);

CREATE TABLE moves (
    move_id INT AUTO_INCREMENT PRIMARY KEY,
    game_id INT,
    player_id INT,
    row INT,
    col INT
);
