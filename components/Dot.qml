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

Component {
    Entity {
        id: dotEntity
        height: units.gu(1)
        width: units.gu(1)

        fixtures: Circle {
            // This is the physic entity
            anchors.centerIn: parent
            radius: parent.width / 2

            density: 1
            friction: 0.5
            restitution: 0.2
        }

        Rectangle {
            // This is the drawn ball
            radius: parent.width / 2

            color: "yellow"

            height: parent.height
            width: parent.width
        }
    }
}
