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
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.1
import Bacon2D 1.0
import "../components"
import "../js/setup.js" as Setup

Scene {
    ColumnLayout {
        width: parent.width

        AboutText {
            text: "Decidat"
            font.pixelSize: units.gu(10)
        }
        AboutText {
            text: version
            font.pixelSize: units.gu(2)
        }

        Spacer {}

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: i18n.tr("Start game!")

            color: UbuntuColors.orange

            onClicked: {
                game.currentScene = gameScene;
                Setup.newGame();
            }
        }

        Spacer {}

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: i18n.tr("Tutorial")

            color: UbuntuColors.orange

            onClicked: {
                game.currentScene = tutorial;
            }
        }

        Spacer {}

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: i18n.tr("About")

            color: UbuntuColors.orange

            onClicked: {
                game.currentScene = about;
                about.running = true;
            }
        }
    }
}
