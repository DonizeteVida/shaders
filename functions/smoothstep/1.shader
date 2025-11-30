// uniform vec2 iResolution;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    float x = smoothstep(.33, .66, st.x);

    if (x == 0.0) {
        gl_FragColor = vec4(0, 0, 1, 1); //BLUE
    } else if (x == 1.0) {
        gl_FragColor = vec4(0, 1, 0, 1); //GREEN
    } else {
        gl_FragColor = vec4(x, 0, 0, 1); //RED
    }
}