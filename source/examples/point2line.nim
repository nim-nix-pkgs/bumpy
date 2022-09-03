import bumpy, common

var
  l: Line
  p: Vec2

l.a.x = 0
l.a.y = 100
l.b.x = 800
l.b.y = 400

start()

while true:
  screen.fill(rgba(255, 255, 255, 255))

  p = window.mousePos.vec2
  screen.strokeCircle(circle(p, 10), parseHtmlColor("#2ecc71"))

  let color =
    if overlaps(l, p, fudge = 1.5):
      parseHtmlColor("#e74c3c")
    else:
      parseHtmlColor("#3498db")
  screen.strokeSegment(segment(l.a, l.b), color)

  tick()
