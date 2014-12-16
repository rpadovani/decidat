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
import QtQml 2.2
import QtQuick 2.3
import Bacon2D 1.0

Entity {
    id: doorEntity
    height: units.gu(2)
    width: gameScene.width

    fixtures: Edge {
        sensor: true
        vertices: [
            Qt.point(0, 0),
            Qt.point(parent.width, 0)
        ]
        onBeginContact: {
            if (other.parent.x + other.parent.width / 2 < rect.x + rect.width/2 - units.gu(3) || other.parent.x + other.parent.width / 2 > rect.x + rect.width/2 + units.gu(3)) {
                console.log('destroyed')
            }
        }
    }


    Rectangle {
        anchors.fill: parent
        color: "black"

        Rectangle {
            id: rect
            color: "white"
            width: units.gu(6)
            height: parent.height
        }
        MouseArea {
            anchors.fill: parent
            drag.target: rect
            drag.axis: Drag.XAxis
            drag.minimumX: 0
        }
    }
}
