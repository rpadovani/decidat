/*
 * Copyright 2014 Riccardo Padovani <riccardo@rpadovani.com>
 *
 * This file is part of decidat.
 *
 * decidat is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * decidat is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

function newGame() {
    for (var j = 1; j < 14; j++) {
        for (var i = 1; i < 14; i++) {
            var newDot = dot.createObject(gameScene.world);
            newDot.x = gameScene.width / 13 * j - units.gu(i % 2 * 1.5);
            newDot.y = gameScene.height/ 16 * i;
        }
    }
    launchBall();
}

function launchBall() {
    var newBall = ball.createObject(gameScene.world);
    newBall.x = gameScene.width / 100 * (Math.floor(Math.random() * 98) + 1);

    gameScene.running = true;
}
