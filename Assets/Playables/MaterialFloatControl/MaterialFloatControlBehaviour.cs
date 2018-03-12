using System;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

[Serializable]
public class MaterialFloatControlBehaviour : PlayableBehaviour
{

    public enum TweenType
    {
        Linear,
        Harmonic,
        Custom,
    }

    public TweenType tweenType;
    public string attributeName;

    public float initialValue;
    public float targetValue;

	public AnimationCurve customCurve;

	[HideInInspector]
    public AnimationCurve currentCurve;

    AnimationCurve m_LinearCurve = AnimationCurve.Linear(0f, 0f, 1f, 1f);
    AnimationCurve m_HarmonicCurve = AnimationCurve.EaseInOut(0f, 0f, 1f, 1f);


    public override void OnGraphStart (Playable playable)
    {
        double duration = playable.GetDuration();
        if (Mathf.Approximately((float)duration, 0f))
            throw new UnityException("A TransformTween cannot have a duration of zero.");

        switch (tweenType)
        {
            case TweenType.Linear:
                currentCurve = m_LinearCurve;
                break;
            case TweenType.Harmonic:
                currentCurve = m_HarmonicCurve;
                break;
            case TweenType.Custom:
                currentCurve = customCurve;
                break;
        }


    }

}
