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

import QtQuick 2.3
import Ubuntu.Components 1.1
import Bacon2D 1.0
import "components"
import "scenes"

Game {
    id: game
    anchors.centerIn: parent

    height: units.gu(68)
    width: units.gu(44)

    gameName: "com.ubuntu.developer.rpadovani.decidat"

    // Version of the game
    property real version: 0.1

    currentScene: mainMenu

    MainMenu {
        id: mainMenu
        anchors.fill: parent
    }

    GameScene {
        id: gameScene
        anchors.fill: parent

        running: false

        Dot {
            id: dot
        }

        Ball {
            id: ball
        }
    }
}
