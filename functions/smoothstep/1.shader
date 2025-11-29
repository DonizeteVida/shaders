// uniform vec2 iResolution;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    float step = smoothstep(.33, .66, st.x);

    if (step == .0) {
        gl_FragColor = vec4(0, 0, 1, 1);
    } else if (step == 1.0) {
        gl_FragColor = vec4(0, 1, 0, 1);
    } else {
        gl_FragColor = vec4(step, 0, 0, 1);
    }
}