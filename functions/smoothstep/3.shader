// uniform vec2 iResolution;
// uniform vec2 iMouse;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;
    vec2 mouse = iMouse.xy / iResolution.xy;

    float p = mouse.x / 2.;

    vec4 step = smoothstep(p, 1. - p, vec4(st, 0, 1));

    gl_FragColor = step;
}