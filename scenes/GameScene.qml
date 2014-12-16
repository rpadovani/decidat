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
    property int numberOfBalls: 0
    property int lastXClick: parent.width / 2

    gravity: Qt.point(0, 20)
    physics: true
    running: false
    clip: true

    Timer {
        id: timer

        interval: 3001 - numberOfBalls * 10
        onTriggered: {
            if (numberOfBalls < 200) {
                numberOfBalls++;
            }
            Setup.launchBall();
        }
        running: gameScene.running
        repeat: true
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            lastXClick = mouseX;
        }
    }

    Door {
        y: parent.height - units.gu(6)
    }

    Entity {
        height: parent.height
        width: parent.width

        fixtures: [
            Edge {
                vertices: [
                    Qt.point(0, 0),
                    Qt.point(0, parent.height)
                ]
            },
            Edge {
                vertices: [
                    Qt.point(parent.width, 0),
                    Qt.point(parent.width, parent.height)
                ]
            }
        ]

        Canvas {
            id: canvas
            anchors.fill: parent

            onPaint: {
                var context = canvas.getContext("2d")
                context.beginPath();
                context.lineWidth = units.gu(0.5);

                context.moveTo(0, 0);
                context.lineTo(0, parent.height);

                context.moveTo(parent.width, 0);
                context.lineTo(parent.width, parent.height)

                context.strokeStyle = "yellow";
                context.stroke();
            }
        }
    }
}
