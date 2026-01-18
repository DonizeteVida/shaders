// uniform vec2 iResolution;

// y = x

#define THICKNESS .01

float plot(float y, vec2 st) {
    float top = step(y + THICKNESS, st.y);
    float bottom = step(y - THICKNESS, st.y);

    return bottom - top;
}

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    float y = st.x;
    float color = plot(y, st);

    gl_FragColor = vec4(vec3(color), 1);
}