attribute highp vec2 pos;

uniform mat3 proj;
uniform highp vec2 pixelOffset;
uniform highp vec2 pixelSize;
uniform highp vec2 monitorSize;
uniform highp vec2 blurTexSize;

varying highp vec2 pixCoord;
varying highp vec2 monitorTexCoord;
varying highp vec2 blurTexCoord;

void main() {
	pixCoord = pos * pixelSize;
	monitorTexCoord = (pixelOffset + pixCoord) / monitorSize;
	blurTexCoord = (pixelOffset + pixCoord) / blurTexSize;
	gl_Position = vec4(proj * vec3(monitorTexCoord, 1.0), 1.0);
}
