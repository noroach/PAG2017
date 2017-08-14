// if not blocked by walls or floors

var top = !collision_line(x, y, o_newplayer.x, o_newplayer.y - 64, o_solid, false, true);
var mid = !collision_line(x, y, o_newplayer.x, o_newplayer.y - bs, o_solid, false, true);
var bot = !collision_line(x, y, o_newplayer.x, o_newplayer.y - 4, o_solid, false, true);

has_line_of_sight = top || mid || bot;
