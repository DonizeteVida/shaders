// uniform vec2 iResolution;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    vec4 step = smoothstep(.48, .52, vec4(st.x, st.y, 0, 1));

    gl_FragColor = step;
}