// uniform vec2 iResolution;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    vec2 center = vec2(.5);
    float radius = .2;

    float distance = distance(st, center);

    if (distance > radius) {
        gl_FragColor = vec4(1);
    } else {
        gl_FragColor = vec4(1, 0, 0, 1);
    }
}