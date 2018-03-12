// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33377,y:32759,varname:node_4013,prsc:2|diff-6186-RGB,normal-6163-RGB,emission-4954-OUT,clip-478-OUT;n:type:ShaderForge.SFN_Tex2d,id:6186,x:31712,y:32625,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_6186,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6163,x:31712,y:32439,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_6163,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:5722,x:31725,y:32835,ptovrint:False,ptlb:DissolveMap,ptin:_DissolveMap,varname:node_5722,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:9722,x:31580,y:33444,ptovrint:False,ptlb:CutOff,ptin:_CutOff,varname:node_9722,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Smoothstep,id:4570,x:32624,y:33232,varname:node_4570,prsc:2|A-9722-OUT,B-3057-OUT,V-4598-OUT;n:type:ShaderForge.SFN_Slider,id:8518,x:31594,y:33583,ptovrint:False,ptlb:Width,ptin:_Width,varname:node_8518,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:1;n:type:ShaderForge.SFN_Add,id:3057,x:32312,y:33408,varname:node_3057,prsc:2|A-9722-OUT,B-8518-OUT;n:type:ShaderForge.SFN_Multiply,id:4021,x:32083,y:33595,varname:node_4021,prsc:2|A-8518-OUT,B-5555-OUT;n:type:ShaderForge.SFN_Vector1,id:5555,x:31737,y:33676,varname:node_5555,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:3945,x:32312,y:33564,varname:node_3945,prsc:2|A-9722-OUT,B-4021-OUT;n:type:ShaderForge.SFN_Step,id:478,x:32826,y:33526,varname:node_478,prsc:2|A-4598-OUT,B-3945-OUT;n:type:ShaderForge.SFN_RemapRange,id:4598,x:31935,y:32835,cmnt:make sure effect cut out completely under certain threshold,varname:node_4598,prsc:2,frmn:0,frmx:1,tomn:0.4,tomx:1|IN-5722-R;n:type:ShaderForge.SFN_Tex2dAsset,id:709,x:31739,y:33116,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:node_709,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ca17cd7ef6518e64aa257c4b3bf49970,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3219,x:32223,y:33100,varname:node_3219,prsc:2,tex:ca17cd7ef6518e64aa257c4b3bf49970,ntxv:0,isnm:False|UVIN-6314-OUT,TEX-709-TEX;n:type:ShaderForge.SFN_Append,id:6314,x:31979,y:33068,varname:node_6314,prsc:2|A-4570-OUT,B-6287-OUT;n:type:ShaderForge.SFN_Vector1,id:6287,x:31979,y:33203,varname:node_6287,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:4954,x:32866,y:32921,varname:node_4954,prsc:2|A-4570-OUT,B-3219-RGB;proporder:6186-6163-5722-9722-8518-709;pass:END;sub:END;*/

Shader "Shader Forge/Dissolve" {
    Properties {
        _Color ("Color", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        _DissolveMap ("DissolveMap", 2D) = "white" {}
        _CutOff ("CutOff", Range(0, 1)) = 0
        [HideInInspector]_Width ("Width", Range(0, 1)) = 0.3
        _Ramp ("Ramp", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Color; uniform float4 _Color_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _DissolveMap; uniform float4 _DissolveMap_ST;
            uniform float _CutOff;
            uniform float _Width;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _DissolveMap_var = tex2D(_DissolveMap,TRANSFORM_TEX(i.uv0, _DissolveMap));
                float node_4598 = (_DissolveMap_var.r*0.6+0.4); // make sure effect cut out completely under certain threshold
                clip(step(node_4598,(_CutOff+(_Width*1.0))) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Color_var = tex2D(_Color,TRANSFORM_TEX(i.uv0, _Color));
                float3 diffuseColor = _Color_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_4570 = smoothstep( _CutOff, (_CutOff+_Width), node_4598 );
                float2 node_6314 = float2(node_4570,0.0);
                float4 node_3219 = tex2D(_Ramp,TRANSFORM_TEX(node_6314, _Ramp));
                float3 emissive = (node_4570*node_3219.rgb);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Color; uniform float4 _Color_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _DissolveMap; uniform float4 _DissolveMap_ST;
            uniform float _CutOff;
            uniform float _Width;
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _DissolveMap_var = tex2D(_DissolveMap,TRANSFORM_TEX(i.uv0, _DissolveMap));
                float node_4598 = (_DissolveMap_var.r*0.6+0.4); // make sure effect cut out completely under certain threshold
                clip(step(node_4598,(_CutOff+(_Width*1.0))) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Color_var = tex2D(_Color,TRANSFORM_TEX(i.uv0, _Color));
                float3 diffuseColor = _Color_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _DissolveMap; uniform float4 _DissolveMap_ST;
            uniform float _CutOff;
            uniform float _Width;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _DissolveMap_var = tex2D(_DissolveMap,TRANSFORM_TEX(i.uv0, _DissolveMap));
                float node_4598 = (_DissolveMap_var.r*0.6+0.4); // make sure effect cut out completely under certain threshold
                clip(step(node_4598,(_CutOff+(_Width*1.0))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
