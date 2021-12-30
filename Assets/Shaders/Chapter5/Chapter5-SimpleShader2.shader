﻿// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Unity Shader Book/Chapter 5/Simple Shader 2"
{
	Properties{
		_Color("Color Tint", Color) = (1.0, 1.0, 1.0, 1.0)
	}

		SubShader
	{
		Pass{
			CGPROGRAM

			fixed4 _Color;

			#pragma vertex vert

			#pragma fragment frag

			struct a2v {
				// 用模型空间的顶点填充
				float4 vertex : POSITION;
				// 用模型空间的法线方向
				float3 normal : NORMAL;
				// 用模型的第一套纹理坐标填充
				float4 texcoord : TEXCOORD0;
			};

			struct v2f {
				float4 pos : SV_POSITION;
				fixed3 color : COLOR0;
			};

			v2f vert(a2v v)
			{
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.color = v.normal * 0.5 * fixed3(0.5, 0.5, 0.5);
				return o;
			}

			fixed4 frag(v2f i) : SV_Target{
				fixed3 c = i.color;
				c *= _Color.rgb;
				return fixed4(c, 1.0);
			}

			ENDCG
		}
	}
}
