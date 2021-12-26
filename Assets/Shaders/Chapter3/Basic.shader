// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Tutorial/Basic"
{
    Properties {
        _Color("Main Color", Color) = (1, 0.5, 0.5, 1)
    }

    SubShader
    {
        Pass{
            
            Material {
                Diffuse [_Color]
            }

            Lighting On
        }
    }
}
