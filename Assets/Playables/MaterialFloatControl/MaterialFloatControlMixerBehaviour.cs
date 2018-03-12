using System;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class MaterialFloatControlMixerBehaviour : PlayableBehaviour
{

    // NOTE: This function is called at runtime and edit time.  Keep that in mind when setting the values of properties.
    public override void ProcessFrame(Playable playable, FrameData info, object playerData)
    {
        MeshRenderer trackBinding = playerData as MeshRenderer;
        if (!trackBinding)
            return;

        Material material = trackBinding.sharedMaterial;
        if (!material)
            return;

        int clipsCountOnCurrentTrack = playable.GetInputCount ();//how many clips on current track
		Debug.Log(clipsCountOnCurrentTrack);

        float currentFrameValue = 0;
		int nameHash = -1;
		float totalWeight = 0;

		for(int i = 0;i < clipsCountOnCurrentTrack;i++) {
			float inputWeight = playable.GetInputWeight(i);
			totalWeight += inputWeight;
			ScriptPlayable<MaterialFloatControlBehaviour> inputPlayable = (ScriptPlayable<MaterialFloatControlBehaviour>)playable.GetInput(i);
			MaterialFloatControlBehaviour input = inputPlayable.GetBehaviour();

			if (string.IsNullOrEmpty(input.attributeName))
				continue;

			nameHash = Shader.PropertyToID(input.attributeName);

			float normalisedTime = (float)(inputPlayable.GetTime() / inputPlayable.GetDuration());
			float tweenProgress = input.currentCurve.Evaluate(normalisedTime);

			currentFrameValue += ((1 - tweenProgress) * input.initialValue + tweenProgress * input.targetValue) * inputWeight;
		}

		if(nameHash != -1) {
			float originalValue = material.GetFloat(nameHash);
			material.SetFloat(nameHash, originalValue * (1 - totalWeight) + currentFrameValue);
		}

    }
}
