#ifndef UNITY_DECLARE_DEPTH_TEXTURE_INCLUDED
#define UNITY_DECLARE_DEPTH_TEXTURE_INCLUDED
#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"

TEXTURE2D_X(_CameraDepthTexture);
SAMPLER(sampler_CameraDepthTexture);
TEXTURE2D_X(_CameraDepthTransparentTexture);
SAMPLER(sampler_CameraDepthTransparentTexture);
float SampleSceneDepth(float2 uv)
{
    return SAMPLE_TEXTURE2D_X(_CameraDepthTexture, sampler_CameraDepthTexture, UnityStereoTransformScreenSpaceTex(uv)).r;
}

float LoadSceneDepth(uint2 uv)
{
    return LOAD_TEXTURE2D_X(_CameraDepthTexture, uv).r;
}

float SampleSceneDepthTrans(float2 uv)
{
    return SAMPLE_TEXTURE2D_X(_CameraDepthTransparentTexture, sampler_CameraDepthTransparentTexture, UnityStereoTransformScreenSpaceTex(uv)).r;
}

float LoadSceneDepthTrans(uint2 uv)
{
    return LOAD_TEXTURE2D_X(_CameraDepthTransparentTexture, uv).r;
}
#endif
