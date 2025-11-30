// uniform vec2 iResolution;
// uniform vec2 iMouse;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;
    vec2 mouse = iMouse.xy / iResolution.xy;

    float half_horizontal_percentage = mouse.x / 2.;
    float half_vertical_percentage = mouse.y / 2.;

    float horizontal_inverse = 1.0 - half_horizontal_percentage;
    float vertical_inverse = 1.0 - half_vertical_percentage;

    vec4 original = vec4(
        st.x, 
        st.y,
        0,
        1
    );

    vec4 new = vec4(
        smoothstep(half_horizontal_percentage, horizontal_inverse, original.x),
        smoothstep(half_vertical_percentage, vertical_inverse, original.y),
        0,
        1
    );

    gl_FragColor = new;
}