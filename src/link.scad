length = 10;
width = 1;

module rotate_keep(angle)
{
    children();
    rotate(angle) children();
}

$fn = 10;

module link(length, width)
{
    cube([ width, length, width ], center = true);
    rotate_keep([ 180, 180, 0 ])
    {
        translate([ 0, length / 2 + width, 0 ]) difference()
        {
            cylinder(width, r = width * 2, center = true);
            cylinder(width + .1, r = width * 2 / 2, center = true);
            rotate([ 0, 0, -90 ]) translate([ 0, 0, -width + .1 ]) difference()
            {
                cube(width * 4);
                rotate([ 0, 0, 35 ]) cube(width * 4);
            }
        }
    }
}

link(length, width);