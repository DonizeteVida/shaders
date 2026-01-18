// uniform vec2 iResolution;

void main() {
    vec2 st = gl_FragCoord.xy / iResolution.xy;

    vec2 center = vec2(.5, .5);

    vec2 diff = st - center;

    float hypotenus = length(diff);

    vec3 color = vec3(hypotenus);

    gl_FragColor = vec4(step(.1, color), 1);
}