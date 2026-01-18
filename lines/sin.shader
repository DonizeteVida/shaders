// uniform vec2 iResolution;

// y = sin(x + time)

#define THICKNESS .01

float plot(float y, vec2 st) {
    float top = step(y + THICKNESS, st.y);
    float bottom = step(y - THICKNESS, st.y);

    return bottom - top;
}

void main() {
    //pos -> 0..1 -> -1..1
    vec2 st = ((gl_FragCoord.xy / iResolution.xy) * 2.) - vec2(1.);

    float y = sin(st.x + iTime);
    float color = plot(y, st);

    gl_FragColor = vec4(vec3(color), 1);
}