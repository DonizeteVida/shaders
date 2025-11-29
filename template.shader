// uniform vec2 iResolution;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    gl_FragColor = vec4(st.x, st.y, 0, 1);
}